# frozen_string_literal: true

require "json"
require "net/http"
require "securerandom"
require "uri"

require_relative "errors"
require_relative "file_download"
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

    def post_with_headers(path, body = nil, headers: {})
      post(path, body, headers: headers)
    end

    def post_multipart(path, fields: {}, files: {}, headers: {}, authenticated: true)
      uri = build_uri(path, nil)
      request = Net::HTTP::Post.new(uri)
      request["Accept"] = "application/json"
      request["User-Agent"] = USER_AGENT
      request["Authorization"] = "Bearer #{@api_key}" if authenticated
      headers = headers.dup
      if authenticated && idempotent_mutation_path?(path) && !header_present?(headers, "Idempotency-Key")
        headers["Idempotency-Key"] = generate_idempotency_key
      end
      headers.each { |key, value| request[key] = value }

      form = []
      fields.each do |key, value|
        next if value.nil?

        form << [key.to_s, value.is_a?(Hash) || value.is_a?(Array) ? JSON.generate(value) : value.to_s]
      end
      files.each do |key, path|
        form << [key.to_s, File.open(path)]
      end
      request.set_form(form, "multipart/form-data")

      response = @adapter ? @adapter.call(uri, request) : build_http(uri).request(request)
      handle_response(path, response)
    end

    def post_binary_json(path, body)
      body = with_request_meta_idempotency(:post, path, coerce_body(body), {})
      response = raw_request(:post, path, JSON.dump(body), {
        "Accept" => "application/octet-stream",
        "Content-Type" => "application/json",
        "Authorization" => "Bearer #{@api_key}"
      })
      return FileDownload.new(response.body.to_s, response.to_hash) if response.code.to_i < 400

      handle_response(path, response)
    end

    def get_binary_public(url)
      uri = build_uri(url, nil)
      request = Net::HTTP::Get.new(uri)
      request["User-Agent"] = USER_AGENT
      response = @adapter ? @adapter.call(uri, request) : build_http(uri).request(request)
      return FileDownload.new(response.body.to_s, response.to_hash) if response.code.to_i < 400

      handle_response(url, response)
    end

    def request(method, path, body: nil, headers: {}, query: nil)
      uri = build_uri(path, query)
      body = validate_body(path, coerce_body(body))
      body = with_request_meta_idempotency(method, path, body, headers)
      request = build_request(method, uri, body, headers)

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
      if path.start_with?("http://", "https://")
        uri = URI.parse(path)
        uri.query = URI.encode_www_form(query) if query && !query.empty?
        return uri
      end
      normalized = path.start_with?("/") ? path : "/#{path}"
      uri = URI.parse(@base_url + normalized)
      uri.query = URI.encode_www_form(query) if query && !query.empty?
      uri
    end

    def raw_request(method, path, body, headers)
      uri = build_uri(path, nil)
      request = build_request(method, uri, nil, headers)
      request.body = body if body
      @adapter ? @adapter.call(uri, request) : build_http(uri).request(request)
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

    def with_request_meta_idempotency(method, path, body, headers)
      return body unless body.is_a?(Hash)

      payload = body.dup
      payload.delete(:idempotency_key)
      payload.delete("idempotency_key")
      return payload unless method.to_s.downcase == "post" && idempotent_mutation_path?(path)
      return payload if header_present?(headers, "Idempotency-Key")

      request_meta_value = payload.delete(:request_meta) || payload.delete("request_meta")
      request_meta = request_meta_value.is_a?(Hash) ? request_meta_value.dup : {}
      existing = request_meta[:idempotency_key] || request_meta["idempotency_key"]
      request_meta["idempotency_key"] = generate_idempotency_key if existing.to_s.strip.empty?
      payload["request_meta"] = request_meta
      payload
    end

    def idempotent_mutation_path?(path_or_url)
      path =
        if path_or_url.start_with?("http://", "https://")
          URI.parse(path_or_url).path
        else
          path_or_url
        end
      action = path.split("/").reject(&:empty?).last
      !["", nil, "lookup", "page", "settings", "countries", "contents", "balances", "render_preview"].include?(action)
    rescue URI::InvalidURIError
      false
    end

    def header_present?(headers, name)
      headers.any? { |key, value| key.to_s.casecmp?(name) && !value.to_s.strip.empty? }
    end

    def generate_idempotency_key
      random = SecureRandom.bytes(10).bytes
      timestamp = (Time.now.to_f * 1000).to_i & ((1 << 48) - 1)
      rand_a = ((random[0] << 8) | random[1]) & 0x0fff
      rand_b = random[2..].reduce(0) { |value, byte| (value << 8) | byte } & ((1 << 62) - 1)
      value = (timestamp << 80) | (0x7 << 76) | (rand_a << 64) | (0x2 << 62) | rand_b
      hex = value.to_s(16).rjust(32, "0")
      "#{hex[0, 8]}-#{hex[8, 4]}-#{hex[12, 4]}-#{hex[16, 4]}-#{hex[20, 12]}"
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

      if value.respond_to?(:to_h) && !value.is_a?(Hash) && !value.is_a?(Array)
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
      when "/chimes/broadcast"
        Commerce::Models::BroadcastResponse
      when "/schedules/lookup"
        Commerce::Models::ScheduleLookupResponse
      when "/schedules/cancel"
        Commerce::Models::ScheduleCancelResponse
      when "/broadcasts/lookup"
        Commerce::Models::LookupBroadcastResponse
      when "/broadcasts/cancel"
        Commerce::Models::BroadcastCancelResponse
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
      when "/financial_accounts/update"
        Commerce::Models::FinancialAccountResponse
      when "/financial_accounts/enable_push", "/financial_accounts/disable_push", "/financial_accounts/enable_pull", "/financial_accounts/disable_pull", "/financial_accounts/disconnect"
        Commerce::Models::FinancialAccountResponse
      when "/customers/create", "/customers/lookup"
        Commerce::Models::CustomerResponse
      when "/customers/page"
        Commerce::Models::CustomerPageResponse
      when "/products/create", "/products/lookup", "/products/update", "/products/publish", "/products/unpublish", "/products/archive", "/products/set_default_unit_price"
        Commerce::Models::ProductResponse
      when "/products/add_price"
        Commerce::Models::AddProductPriceResponse
      when "/products/page"
        Commerce::Models::ProductPageResponse
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
      when "/payouts/cancel"
        Commerce::Models::CancelPayoutResponse
      end
    end

    def validate_body(path, body)
      return body unless body.is_a?(Hash)

      case path
      when "/financial_accounts/create", "/financial_accounts/connect"
        require_keys(body, %w[label type reference currency owner], path)
      when "/financial_accounts/lookup"
        require_keys(body, %w[account_id], path)
      when "/customers/create"
        require_keys(body, %w[name], path)
      when "/customers/lookup"
        require_keys(body, %w[customer_id], path)
      when "/products/create"
        require_keys(body, %w[type name], path)
      when "/products/add_price"
        require_keys(body, %w[product_id amount], path)
      when "/products/set_default_unit_price"
        require_keys(body, %w[product_id price_id], path)
      when "/products/lookup", "/products/update", "/products/publish", "/products/unpublish", "/products/archive"
        require_keys(body, %w[product_id], path)
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
      when "/payouts/cancel"
        require_keys(body, %w[payout_id], path)
      end

      body
    end

    def require_keys(body, keys, path)
      missing = keys.reject { |key| present?(body[key]) || present?(body[key.to_sym]) }
      return if missing.empty?

      raise ArgumentError, "Missing required fields for #{path}: #{missing.join(', ')}"
    end

    def require_any(body, keys, path)
      present = keys.any? { |key| present?(body[key]) || present?(body[key.to_sym]) }
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
