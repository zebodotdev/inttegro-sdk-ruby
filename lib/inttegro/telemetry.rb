# frozen_string_literal: true
# typed: strict

require "opentelemetry-api"
require "sorbet-runtime"
require "uri"

require_relative "errors"

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
        tracer_provider: T.nilable(OpenTelemetry::Trace::TracerProvider)
      ).void
    end
    def initialize(version, enabled: true, tracer_provider: nil)
      @enabled = T.let(enabled, T::Boolean)
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
      return yield(nil) unless @enabled

      operation, route, server_address = request_details(path_or_url, base_url, operation_override)
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
