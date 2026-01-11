# frozen_string_literal: true

require "json"
require "net/http"
require "uri"

require_relative "errors"
require_relative "models"
require_relative "response_object"
require_relative "version"

module Commerce
  DEFAULT_BASE_URL = "https://api.zebo.dev"

  # Minimal HTTP client that wraps Net::HTTP with JSON parsing and API-friendly errors.
  class HTTPClient
    USER_AGENT = "zebo-commerce-sdk-ruby/#{Commerce::VERSION}"

    def initialize(api_key:, base_url: DEFAULT_BASE_URL, read_timeout: 30, open_timeout: 10, adapter: nil)
      @api_key = api_key || ""
      raise ArgumentError, "api_key is required" if @api_key.strip.empty?

      @base_url = base_url&.sub(%r{/*$}, "") || DEFAULT_BASE_URL
      @read_timeout = read_timeout
      @open_timeout = open_timeout
      @adapter = adapter
    end

    def get(path, headers: {}, query: nil)
      request(:get, path, headers: headers, query: query)
    end

    def post(path, body = nil, headers: {}, query: nil)
      request(:post, path, body: body, headers: headers, query: query)
    end

    def request(method, path, body: nil, headers: {}, query: nil)
      uri = build_uri(path, query)
      request = build_request(method, uri, validate_body(path, coerce_body(body)), headers)

      response =
        if @adapter
          @adapter.call(uri, request)
        else
          http = build_http(uri)
          http.request(request)
        end
      handle_response(path, response)
    rescue Timeout::Error, Errno::ETIMEDOUT => e
      raise TimeoutError.new("Request timed out", e)
    rescue SocketError, Errno::ECONNREFUSED, Errno::ECONNRESET => e
      raise NetworkError.new("Network request failed", e)
    end

    private

    def build_uri(path, query)
      normalized = path.start_with?("/") ? path : "/#{path}"
      uri = URI.parse(@base_url + normalized)
      uri.query = URI.encode_www_form(query) if query && !query.empty?
      uri
    end

    def build_http(uri)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = uri.scheme == "https"
      http.read_timeout = @read_timeout if @read_timeout
      http.open_timeout = @open_timeout if @open_timeout
      http
    end

    def build_request(method, uri, body, headers)
      klass =
        case method.to_s.downcase
        when "get" then Net::HTTP::Get
        when "post" then Net::HTTP::Post
        when "delete" then Net::HTTP::Delete
        when "put" then Net::HTTP::Put
        when "patch" then Net::HTTP::Patch
        else
          raise ArgumentError, "Unsupported HTTP method: #{method}"
        end

      req = klass.new(uri)
      req["Accept"] = "application/json"
      req["Authorization"] = "Bearer #{@api_key}"
      req["User-Agent"] = USER_AGENT

      headers.each { |key, value| req[key] = value }

      if body
        req["Content-Type"] ||= "application/json"
        req.body = JSON.dump(body)
      end

      req
    end

    def handle_response(path, response)
      status = response.code.to_i
      body = response.body.to_s
      data = parse_json(body)

      return wrap_response(data, response_model_for(path)) if status < 400

      payload = extract_error_payload(data)
      message = payload[:message] || payload[:detail] || extract_error_message(data, response)
      code = payload[:code]
      type = payload[:type]
      url = payload[:url]
      detail = payload[:detail]
      fix_code = payload[:fix_code]
      cause = payload[:cause]

      case status
      when 401
        raise AuthenticationError.new(
          message,
          status: status,
          code: code,
          type: type,
          url: url,
          detail: detail,
          fix_code: fix_code,
          cause: cause,
          body: body,
          data: data
        )
      when 429
        retry_after = response["Retry-After"]&.to_i
        raise RateLimitError.new(
          message,
          status: status,
          code: code,
          type: type,
          url: url,
          detail: detail,
          fix_code: fix_code,
          cause: cause,
          body: body,
          data: data,
          retry_after: retry_after
        )
      else
        raise APIError.new(
          message,
          status: status,
          code: code,
          type: type,
          url: url,
          detail: detail,
          fix_code: fix_code,
          cause: cause,
          body: body,
          data: data
        )
      end
    end

    def parse_json(body)
      return {} if body.nil? || body.empty?

      JSON.parse(body)
    rescue JSON::ParserError
      body
    end

    def extract_error_message(data, response)
      return "HTTP #{response.code} #{response.message}" unless data.is_a?(Hash)

      data.dig("error", "message") || data["message"] || data["error"] || "HTTP #{response.code}"
    end

    def extract_error_payload(data)
      return {} unless data.is_a?(Hash)

      payload = data["error"].is_a?(Hash) ? data["error"] : data
      {
        message: payload["message"],
        detail: payload["detail"],
        code: payload["code"],
        type: payload["type"],
        url: payload["url"],
        fix_code: payload["fix_code"],
        cause: payload["cause"]
      }
    end

    def wrap_response(data, model_class = nil)
      case data
      when Hash
        model_class ? Commerce::Models.deserialize(data, model_class) : ResponseObject.new(data)
      when Array
        data.map { |item| wrap_response(item, model_class) }
      else
        data
      end
    end

    def coerce_body(value)
      return value if value.nil?

      if value.respond_to?(:to_h) && !value.is_a?(Hash)
        value = value.to_h
      end

      case value
      when Hash
        value.each_with_object({}) do |(key, val), output|
          output[key] = coerce_body(val)
        end
      when Array
        value.map { |item| coerce_body(item) }
      else
        value
      end
    end

    def response_model_for(path)
      case path
      when "/otp/initiate"
        Commerce::Models::InitiateOtpResponse
      when "/otp/verify"
        Commerce::Models::VerifyOtpResponse
      when "/otp/lookup"
        Commerce::Models::LookupOtpResponse
      when "/otp/cancel"
        Commerce::Models::CancelOtpResponse
      when "/chimes/send", "/chimes/lookup"
        Commerce::Models::ChimeResponse
      when "/chimes/schedule"
        Commerce::Models::ScheduleChimeResponse
      when "/orders/new"
        Commerce::Models::OrderCreateResponse
      when "/orders/lookup", "/orders/confirm_payment", "/orders/finalize", "/orders/complete"
        Commerce::Models::OrderResponse
      when "/orders/pay"
        Commerce::Models::PaymentResponse
      when "/orders/page"
        Commerce::Models::OrderPageResponse
      when "/payment_methods/tokenize", "/payment_methods/confirm_verification", "/payment_methods/lookup"
        Commerce::Models::PaymentMethodResponse
      when "/payment_methods/verify"
        Commerce::Models::PaymentMethodVerificationResponse
      when "/payment_methods/delete"
        Commerce::Models::PaymentMethodDeleteResponse
      when "/payment_methods/settings"
        Commerce::Models::PaymentMethodSettingsResponse
      when "/financial_accounts/create", "/financial_accounts/lookup", "/financial_accounts/connect"
        Commerce::Models::FinancialAccountResponse
      when "/balances"
        Commerce::Models::BalancesResponse
      when "/balance_transactions/page"
        Commerce::Models::BalanceTransactionsResponse
      when "/spec/countries"
        Commerce::Models::CountrySpecificationsResponse
      when "/payouts/set_destinations", "/payouts/settings", "/payouts/disable", "/payouts/enable_fx", "/payouts/disable_fx"
        Commerce::Models::PayoutSettingsResponse
      when "/payouts/page"
        Commerce::Models::PayoutPageResponse
      end
    end

    def validate_body(path, body)
      return body unless body.is_a?(Hash)

      case path
      when "/financial_accounts/create", "/financial_accounts/connect"
        require_keys(body, %w[label type reference currency], path)
      when "/financial_accounts/lookup"
        require_keys(body, %w[account_id], path)
      when "/orders/new"
        require_any(body, %w[customer_data customer_id], path)
        require_keys(body, %w[line_items], path)
      when "/orders/lookup", "/orders/request_confirmation", "/orders/finalize",
           "/orders/cancel", "/orders/refund", "/orders/complete"
        require_keys(body, %w[order_id], path)
      when "/orders/confirm_payment"
        require_keys(body, %w[order_id token], path)
      when "/orders/pay"
        require_keys(body, %w[order_id], path)
      when "/payment_methods/tokenize"
        require_keys(body, %w[customer_id payment_method_data], path)
      when "/payment_methods/verify", "/payment_methods/confirm_verification",
           "/payment_methods/lookup", "/payment_methods/delete"
        require_keys(body, %w[payment_method_id], path)
      when "/payouts/set_destinations"
        require_keys(body, %w[destinations], path)
      end

      body
    end

    def require_keys(body, keys, path)
      missing = keys.reject { |key| present?(body[key]) }
      return if missing.empty?

      raise ArgumentError, "Missing required fields for #{path}: #{missing.join(', ')}"
    end

    def require_any(body, keys, path)
      present = keys.any? { |key| present?(body[key]) }
      return if present

      raise ArgumentError, "Missing required fields for #{path}: one of #{keys.join(', ')}"
    end

    def present?(value)
      return false if value.nil?
      return !value.empty? if value.respond_to?(:empty?)

      true
    end
  end
end
