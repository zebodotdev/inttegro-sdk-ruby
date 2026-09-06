# frozen_string_literal: true
# typed: strict

require "opentelemetry-api"
require "sorbet-runtime"
require "securerandom"
require "time"
require "uri"

require_relative "errors"
require_relative "error_reporting"

module Inttegro
  # Emits redacted SDK spans to the application's OpenTelemetry provider.
  # This class never configures an exporter or sends telemetry to Inttegro.
  class Telemetry
    extend T::Sig

    SAFE_RESOURCES = %w[
      apps balance_transactions balances broadcasts checkout chimes customers file_links file_references files
      financial_accounts keys message_templates orders otp payment_methods payouts ping prices products
      purchase_intents refunds schedules sessions spec upload_requests
    ].freeze
    SAFE_ACTIONS = %w[
      activate add_price archive broadcast cancel complete confirm_payment confirm_verification connect contents
      countries create deactivate delete destroy disable disable_fx disable_pull disable_push disactivate disconnect
      enable enable_fx enable_pull enable_push finalize generate initiate lookup new open page pay publish reconcile
      reconnect refund render_preview request_confirmation review revoke schedule send send_invoice send_receipt
      set_default_unit_price set_destinations settings tokenize unarchive unpublish update upload usage verify
    ].freeze

    sig do
      params(
        version: String,
        enabled: T::Boolean,
        tracer_provider: T.nilable(OpenTelemetry::Trace::TracerProvider),
        error_reporter: T.nilable(ErrorReporter),
        error_reporting_policy: Symbol
      ).void
    end
    def initialize(version, enabled: true, tracer_provider: nil, error_reporter: nil, error_reporting_policy: :unexpected)
      @enabled = T.let(enabled, T::Boolean)
      raise ArgumentError, "error_reporting_policy must be :unexpected or :all" unless %i[unexpected all].include?(error_reporting_policy)

      @error_reporter = T.let(error_reporter, T.nilable(ErrorReporter))
      @error_reporting_policy = T.let(error_reporting_policy, Symbol)
      provider = tracer_provider || OpenTelemetry.tracer_provider
      @tracer = T.let(provider.tracer("inttegro", version), OpenTelemetry::Trace::Tracer)
    end

    sig do
      type_parameters(:Result)
        .params(
          path_or_url: String,
          method: T.any(String, Symbol),
          base_url: String,
          version: String,
          operation_override: T.nilable(String),
          block: T.proc.params(span: T.nilable(OpenTelemetry::Trace::Span)).returns(T.type_parameter(:Result))
        )
        .returns(T.type_parameter(:Result))
    end
    def in_span(path_or_url, method, base_url, version, operation_override = nil, &block)
      return yield(nil) unless @enabled || @error_reporter

      operation, route, server_address = request_details(path_or_url, base_url, operation_override)
      started_at = T.let(@error_reporter ? monotonic_milliseconds : nil, T.nilable(Float))
      unless @enabled
        begin
          return yield(nil)
        rescue StandardError => e
          report_failure(e, operation, route, server_address, method, version, started_at, nil)
          raise
        end
      end
      attributes = {
        "inttegro.operation.name" => operation,
        "inttegro.sdk.language" => "ruby",
        "inttegro.sdk.version" => version,
        "http.request.method" => method.to_s.upcase,
        "server.address" => server_address
      }
      attributes["url.template"] = route if route
      span = @tracer.start_span("inttegro.#{operation}", kind: :client, attributes: attributes)

      begin
        OpenTelemetry::Trace.with_span(span) { |_active_span, _context| yield(span) }
      rescue StandardError => e
        error_type = classify_error(e)
        span.set_attribute("error.type", error_type)
        span.status = OpenTelemetry::Trace::Status.error
        span.add_event("inttegro.request.failed", attributes: { "error.type" => error_type })
        report_failure(e, operation, route, server_address, method, version, started_at, span)
        raise
      ensure
        span.finish
      end
    end

    sig { params(span: T.nilable(OpenTelemetry::Trace::Span), request: Net::HTTPRequest).void }
    def prepare(span, request)
      if @enabled
        carrier = T.let({}, T::Hash[String, String])
        OpenTelemetry.propagation.inject(carrier)
        carrier.each { |key, value| request[key] = value unless request[key] }
      end
      return unless span

      span.add_event("inttegro.request.prepared")
      span.add_event(
        "inttegro.http.attempt.started",
        attributes: { "http.request.resend_count" => 0 }
      )
    end

    sig do
      params(
        span: T.nilable(OpenTelemetry::Trace::Span),
        response: TransportResponse,
        decoded: T::Boolean
      ).void
    end
    def response(span, response, decoded:)
      return unless span

      status = response.code.to_i
      span.set_attribute("http.response.status_code", status)
      request_id = response["x-request-id"]
      span.set_attribute("inttegro.request.id", request_id) if request_id && !request_id.empty?
      span.add_event(
        "inttegro.response.received",
        attributes: {
          "http.response.status_code" => status,
          "http.request.resend_count" => 0
        }
      )
      span.add_event("inttegro.response.decoded") if decoded
    end

    sig { params(span: T.nilable(OpenTelemetry::Trace::Span)).void }
    def decoded(span)
      span.add_event("inttegro.response.decoded") if span
    end

    private

    sig do
      params(
        error: StandardError,
        operation: String,
        route: T.nilable(String),
        server_address: String,
        method: T.any(String, Symbol),
        version: String,
        started_at: T.nilable(Float),
        span: T.nilable(OpenTelemetry::Trace::Span)
      ).void
    end
    def report_failure(error, operation, route, server_address, method, version, started_at, span)
      reporter = @error_reporter
      return unless reporter

      begin
        category = classify_error(error)
        return if category == "canceled"
        if @error_reporting_policy == :unexpected && error.is_a?(APIError)
          return unless error.status >= 500 || error.type == "unknown_error"
        end

        api_error = T.let(error.is_a?(APIError) ? error : nil, T.nilable(APIError))
        api_context = if api_error && (api_error.type || api_error.code || api_error.fix_code)
          APIErrorReportContext.new(type: api_error.type, code: api_error.code, fix_code: api_error.fix_code)
        end
        span_context = span&.context
        trace_context = if span_context&.valid?
          TraceReportContext.new(trace_id: span_context.hex_trace_id, span_id: span_context.hex_span_id)
        end
        status_code = api_error&.status
        report = ErrorReport.new(
          schema_version: 1,
          event_id: SecureRandom.uuid,
          occurred_at: Time.now.utc.iso8601(6),
          severity: "error",
          category: category,
          operation: operation,
          sdk: SDKReportContext.new(language: "ruby", version: version),
          http: HTTPReportContext.new(
            request_method: method.to_s.upcase,
            route: route,
            server_address: server_address,
            status_code: status_code,
            request_id: api_error&.request_id,
            duration_ms: [(monotonic_milliseconds - (started_at || monotonic_milliseconds)).round, 0].max
          ),
          api_error: api_context,
          trace: trace_context,
          exception_type: (error.class.name || "StandardError").split("::").last || "StandardError",
          fingerprint: ["inttegro", "ruby", operation, category, status_code || "none"].join(":")
        )
        error.report = report if error.is_a?(Error)
        reporter.call(report)
      rescue StandardError
        # Report preparation and delivery must never replace the original failure.
      end
    end

    sig { returns(Float) }
    def monotonic_milliseconds
      Process.clock_gettime(Process::CLOCK_MONOTONIC, :millisecond).to_f
    end

    sig do
      params(path_or_url: String, base_url: String, override: T.nilable(String))
        .returns([String, T.nilable(String), String])
    end
    def request_details(path_or_url, base_url, override)
      uri = path_or_url.start_with?("http://", "https://") ? URI.parse(path_or_url) : URI.join("#{base_url}/", path_or_url.sub(%r{\A/}, ""))
      segments = path_or_url.start_with?("http://", "https://") ? [] : T.must(uri.path).split("/").reject(&:empty?)
      resource = segments[0]
      action = segments[1]
      known_route = !resource.nil? && segments.length <= 2 && SAFE_RESOURCES.include?(resource) &&
        (action.nil? || SAFE_ACTIONS.include?(action))
      route = known_route ? uri.path : nil
      derived_operation = known_route ? "#{resource}.#{action || (resource == 'balances' ? 'lookup' : 'request')}" : "http.request"
      [override || derived_operation, route, uri.host || "unknown"]
    end

    sig { params(error: StandardError).returns(String) }
    def classify_error(error)
      return "timeout" if error.is_a?(TimeoutError) || error.is_a?(Timeout::Error) || error.is_a?(Errno::ETIMEDOUT)
      return "network_error" if error.is_a?(NetworkError) || error.is_a?(SocketError) || error.is_a?(SystemCallError)
      return "http_#{error.status}" if error.is_a?(APIError)
      return "decode_error" if error.is_a?(JSON::ParserError)

      "unknown_error"
    end
  end

  private_constant :Telemetry
end
