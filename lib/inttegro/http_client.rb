# frozen_string_literal: true
# typed: strict

require "json"
require "net/http"
require "securerandom"
require "uri"

require_relative "errors"
require_relative "file_download"
require_relative "models"
require_relative "generated/operations"
require_relative "response_object"
require_relative "transport_response"
require_relative "types"
require_relative "version"

module Inttegro
  DEFAULT_BASE_URL = T.let("https://api.inttegro.com", String)

  # Minimal HTTP client that wraps Net::HTTP with JSON parsing and API-friendly errors.
  class HTTPClient
    extend T::Sig

    USER_AGENT = T.let("inttegro-sdk-ruby/#{Inttegro::VERSION}", String)
    ResponseValue = T.type_alias do
      T.any(T::Struct, ResponseObject, Types::Scalar, T::Array[Object])
    end
    ErrorPayload = T.type_alias { T::Hash[Symbol, T.nilable(String)] }

    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        read_timeout: T.nilable(Numeric),
        open_timeout: T.nilable(Numeric),
        adapter: T.nilable(Types::Adapter)
      ).void
    end
    def initialize(api_key:, base_url: DEFAULT_BASE_URL, read_timeout: 30, open_timeout: 10, adapter: nil)
      @api_key = T.let(api_key || "", String)
      raise ArgumentError, "api_key is required" if @api_key.strip.empty?

      normalized_base_url = T.let(base_url || DEFAULT_BASE_URL, String)
      end_index = T.let(normalized_base_url.length, Integer)
      end_index -= 1 while end_index.positive? && normalized_base_url.getbyte(end_index - 1) == 47
      @base_url = T.let(T.must(normalized_base_url[0, end_index]), String)
      @read_timeout = T.let(read_timeout, T.nilable(Numeric))
      @open_timeout = T.let(open_timeout, T.nilable(Numeric))
      @adapter = T.let(adapter, T.nilable(Types::Adapter))
    end

    sig { params(path: String, headers: Types::Headers, query: T.nilable(Types::Query)).returns(ResponseValue) }
    def get(path, headers: {}, query: nil)
      request(:get, path, headers: headers, query: query)
    end

    sig do
      params(
        path: String,
        body: T.nilable(Types::RequestBody),
        headers: Types::Headers,
        query: T.nilable(Types::Query),
        body_keywords: Object
      ).returns(ResponseValue)
    end
    def post(path, body = nil, headers: {}, query: nil, **body_keywords)
      body = body_keywords unless body_keywords.empty?
      request(:post, path, body: body, headers: headers, query: query)
    end

    sig do
      type_parameters(:Model)
        .params(
          path: String,
          model: T::Class[T.type_parameter(:Model)],
          body: Types::RequestBody,
          headers: Types::Headers,
          query: T.nilable(Types::Query)
        )
        .returns(T.type_parameter(:Model))
    end
    def post_model(path, model, body, headers: {}, query: nil)
      unless model <= T::Struct
        raise TypeError, "response model for #{path} must inherit from T::Struct"
      end

      response = request(
        :post,
        path,
        body: body,
        headers: headers,
        query: query,
        response_model: model
      )
      return T.cast(response, T.type_parameter(:Model)) if response.is_a?(model)

      raise TypeError, "expected #{model} from #{path}, got #{response.class}"
    end

    sig do
      type_parameters(:Model)
        .params(
          path: String,
          model: T::Class[T.type_parameter(:Model)],
          field: Symbol,
          body: Types::RequestBody,
          headers: Types::Headers,
          query: T.nilable(Types::Query)
        )
        .returns(T.type_parameter(:Model))
    end
    def post_resource(path, model, field, body, headers: {}, query: nil)
      envelope = post_object(path, body, headers: headers, query: query)
      value = envelope.public_send(field)
      value = value.to_h if value.is_a?(ResponseObject)
      return value if value.is_a?(model)

      decoded = Inttegro.deserialize(value, T.cast(model, T::Class[T::Struct]))
      return decoded if decoded.is_a?(model)

      raise TypeError, "expected #{model} in #{field} from #{path}, got #{decoded.class}"
    end

    sig do
      params(
        path: String,
        body: Types::RequestBody,
        headers: Types::Headers,
        query: T.nilable(Types::Query)
      ).returns(ResponseObject)
    end
    def post_object(path, body, headers: {}, query: nil)
      expect_response_object(request(:post, path, body: body, headers: headers, query: query), path)
    end

    sig do
      params(path: String, body: Types::RequestBody, headers: Types::Headers).returns(ResponseObject)
    end
    def post_with_headers(path, body, headers: {})
      post_object(path, body, headers: headers)
    end

    sig do
      params(
        path: String,
        fields: Types::Payload,
        files: Types::Payload,
        headers: Types::Headers,
        authenticated: T::Boolean
      ).returns(ResponseObject)
    end
    def post_multipart(path, fields: {}, files: {}, headers: {}, authenticated: true)
      expect_response_object(
        perform_multipart(path, fields, files, headers, authenticated, nil),
        path
      )
    end

    sig do
      type_parameters(:Model)
        .params(
          path: String,
          model: T::Class[T.type_parameter(:Model)],
          fields: Types::Payload,
          files: Types::Payload,
          headers: Types::Headers,
          authenticated: T::Boolean
        )
        .returns(T.type_parameter(:Model))
    end
    def post_multipart_model(path, model, fields: {}, files: {}, headers: {}, authenticated: true)
      unless model <= T::Struct
        raise TypeError, "response model for #{path} must inherit from T::Struct"
      end

      response = perform_multipart(path, fields, files, headers, authenticated, model)
      return T.cast(response, T.type_parameter(:Model)) if response.is_a?(model)

      raise TypeError, "expected #{model} from #{path}, got #{response.class}"
    end

    sig do
      type_parameters(:Model)
        .params(
          path: String,
          model: T::Class[T.type_parameter(:Model)],
          field: Symbol,
          fields: Types::Payload,
          files: Types::Payload,
          headers: Types::Headers,
          authenticated: T::Boolean
        )
        .returns(T.type_parameter(:Model))
    end
    def post_multipart_resource(path, model, field, fields: {}, files: {}, headers: {}, authenticated: true)
      envelope = expect_response_object(perform_multipart(
        path,
        fields,
        files,
        headers,
        authenticated,
        nil
      ), path)
      value = envelope.public_send(field)
      return value if value.is_a?(model)

      decoded = Inttegro.deserialize(value, T.cast(model, T::Class[T::Struct]))
      return decoded if decoded.is_a?(model)

      raise TypeError, "expected #{model} in #{field} from #{path}, got #{decoded.class}"
    end

    sig do
      params(
        path: String,
        fields: Types::Payload,
        files: Types::Payload,
        headers: Types::Headers,
        authenticated: T::Boolean,
        model: T.nilable(T::Class[T::Struct])
      ).returns(ResponseValue)
    end
    def perform_multipart(path, fields, files, headers, authenticated, model)
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
        raise ArgumentError, "file path for #{key} must be a String" unless path.is_a?(String)

        form << [key.to_s, File.open(path)]
      end
      request.set_form(form, "multipart/form-data")

      raw_response = @adapter ? @adapter.call(uri, request) : build_http(uri).request(request)
      response = TransportResponse.new(raw_response)
      handle_response(path, response, model)
    end

    sig { params(path: String, body: Types::RequestBody).returns(FileDownload) }
    def post_binary_json(path, body)
      body = with_request_meta_idempotency(:post, path, coerce_body(body), {})
      response = raw_request(:post, path, JSON.dump(body), {
        "Accept" => "application/octet-stream",
        "Content-Type" => "application/json",
        "Authorization" => "Bearer #{@api_key}"
      })
      return FileDownload.new(response.body, response.headers) if response.code.to_i < 400

      raise_response_error(response)
    end

    sig { params(url: String).returns(FileDownload) }
    def get_binary_public(url)
      uri = build_uri(url, nil)
      request = Net::HTTP::Get.new(uri)
      request["User-Agent"] = USER_AGENT
      raw_response = @adapter ? @adapter.call(uri, request) : build_http(uri).request(request)
      response = TransportResponse.new(raw_response)
      return FileDownload.new(response.body, response.headers) if response.code.to_i < 400

      raise_response_error(response)
    end

    sig do
      params(
        method: T.any(String, Symbol),
        path: String,
        body: T.nilable(Types::RequestBody),
        headers: Types::Headers,
        query: T.nilable(Types::Query),
        response_model: T.nilable(T::Class[T::Struct])
      ).returns(ResponseValue)
    end
    def request(method, path, body: nil, headers: {}, query: nil, response_model: nil)
      uri = build_uri(path, query)
      body = validate_body(path, coerce_body(body))
      body = with_request_meta_idempotency(method, path, body, headers)
      request = build_request(method, uri, body, headers)

      raw_response =
        if @adapter
          @adapter.call(uri, request)
        else
          http = build_http(uri)
          http.request(request)
        end
      response = TransportResponse.new(raw_response)
      handle_response(path, response, response_model)
    rescue Timeout::Error, Errno::ETIMEDOUT => e
      raise TimeoutError.new("Request timed out", e)
    rescue SocketError, Errno::ECONNREFUSED, Errno::ECONNRESET => e
      raise NetworkError.new("Network request failed", e)
    end

    private

    sig { params(path: String, query: T.nilable(Types::Query)).returns(URI::Generic) }
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

    sig do
      params(
        method: T.any(String, Symbol),
        path: String,
        body: T.nilable(String),
        headers: Types::Headers
      ).returns(TransportResponse)
    end
    def raw_request(method, path, body, headers)
      uri = build_uri(path, nil)
      request = build_request(method, uri, nil, headers)
      request.body = body if body
      raw_response = @adapter ? @adapter.call(uri, request) : build_http(uri).request(request)
      TransportResponse.new(raw_response)
    end

    sig { params(uri: URI::Generic).returns(Net::HTTP) }
    def build_http(uri)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = uri.scheme == "https"
      http.read_timeout = @read_timeout if @read_timeout
      http.open_timeout = @open_timeout if @open_timeout
      http
    end

    sig do
      params(
        method: T.any(String, Symbol),
        uri: URI::Generic,
        body: T.nilable(Types::Payload),
        headers: Types::Headers
      ).returns(Net::HTTPRequest)
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

    sig do
      params(
        method: T.any(String, Symbol),
        path: String,
        body: T.nilable(Types::Payload),
        headers: Types::Headers
      ).returns(T.nilable(Types::Payload))
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

    sig { params(path_or_url: String).returns(T::Boolean) }
    def idempotent_mutation_path?(path_or_url)
      path =
        if path_or_url.start_with?("http://", "https://")
          URI.parse(path_or_url).path || ""
        else
          path_or_url
        end
      action = path.split("/").reject(&:empty?).last
      !["", nil, "lookup", "page", "settings", "countries", "contents", "balances", "render_preview"].include?(action)
    rescue URI::InvalidURIError
      false
    end

    sig { params(headers: Types::Headers, name: String).returns(T::Boolean) }
    def header_present?(headers, name)
      headers.any? { |key, value| key.to_s.casecmp?(name) && !value.to_s.strip.empty? }
    end

    sig { returns(String) }
    def generate_idempotency_key
      random = SecureRandom.bytes(10).bytes
      timestamp = (Time.now.to_f * 1000).to_i & ((1 << 48) - 1)
      rand_a = ((random[0] << 8) | random[1]) & 0x0fff
      rand_b = random[2..].reduce(0) { |value, byte| (value << 8) | byte } & ((1 << 62) - 1)
      value = (timestamp << 80) | (0x7 << 76) | (rand_a << 64) | (0x2 << 62) | rand_b
      hex = value.to_s(16).rjust(32, "0")
      "#{hex[0, 8]}-#{hex[8, 4]}-#{hex[12, 4]}-#{hex[16, 4]}-#{hex[20, 12]}"
    end

    sig do
      params(
        path: String,
        response: TransportResponse,
        model_class: T.nilable(T::Class[T::Struct])
      ).returns(ResponseValue)
    end
    def handle_response(path, response, model_class = nil)
      status = response.code.to_i
      data = parse_json(response.body)

      return wrap_response(data, model_class) if status < 400

      raise_response_error(response)
    end

    sig { params(response: TransportResponse).returns(T.noreturn) }
    def raise_response_error(response)
      status = response.code.to_i
      body = response.body
      data = parse_json(body)
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

    sig { params(body: String).returns(Types::WireValue) }
    def parse_json(body)
      return {} if body.empty?

      normalize_wire_value(JSON.parse(body))
    rescue JSON::ParserError
      body
    end

    sig { params(data: Object, response: TransportResponse).returns(String) }
    def extract_error_message(data, response)
      return "HTTP #{response.code} #{response.message}" unless data.is_a?(Hash)

      error = data["error"]
      candidate = error.is_a?(Hash) ? error["message"] : data["message"] || error
      candidate.is_a?(String) && !candidate.empty? ? candidate : "HTTP #{response.code}"
    end

    sig { params(data: Object).returns(ErrorPayload) }
    def extract_error_payload(data)
      return {} unless data.is_a?(Hash)

      payload = data["error"].is_a?(Hash) ? data["error"] : data
      {
        message: string_or_nil(payload["message"]),
        detail: string_or_nil(payload["detail"]),
        code: string_or_nil(payload["code"]),
        type: string_or_nil(payload["type"]),
        url: string_or_nil(payload["url"]),
        fix_code: string_or_nil(payload["fix_code"]),
        cause: string_or_nil(payload["cause"])
      }
    end

    sig do
      params(data: Object, model_class: T.nilable(T::Class[T::Struct])).returns(ResponseValue)
    end
    def wrap_response(data, model_class = nil)
      case data
      when Hash
        payload = normalize_payload(data)
        model_class ? Inttegro.deserialize(payload, model_class) : ResponseObject.new(payload)
      when Array
        data.each_with_object(T.let([], T::Array[Object])) do |item, values|
          values << wrap_response(item, model_class)
        end
      when String, Integer, Float, TrueClass, FalseClass, NilClass
        data
      else
        raise TypeError, "unsupported response value: #{data.class}"
      end
    end

    sig { params(value: T.nilable(Types::RequestBody)).returns(T.nilable(Types::Payload)) }
    def coerce_body(value)
      return nil if value.nil?

      normalize_payload(value.is_a?(T::Struct) ? value.serialize : value)
    end

    sig { params(path: String).returns(T.nilable(T::Class[T::Struct])) }
    def response_model_for(path)
      return T.cast(Inttegro.const_get(:OrderEnvelope), T::Class[T::Struct]) if path == "/orders/new"

      Inttegro::Operations::RESPONSE_MODELS[path]
    end

    sig do
      params(path: String, body: T.nilable(Types::Payload)).returns(T.nilable(Types::Payload))
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
      when "/orders/create", "/orders/new"
        require_any(body, %w[customer_data customer_id], path)
        require_keys(body, %w[line_items], path)
      when "/orders/lookup", "/orders/update", "/orders/request_confirmation", "/orders/finalize",
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

    sig { params(body: Types::Payload, keys: T::Array[String], path: String).void }
    def require_keys(body, keys, path)
      missing = keys.reject { |key| present?(body[key]) || present?(body[key.to_sym]) }
      return if missing.empty?

      raise ArgumentError, "Missing required fields for #{path}: #{missing.join(', ')}"
    end

    sig { params(body: Types::Payload, keys: T::Array[String], path: String).void }
    def require_any(body, keys, path)
      present = keys.any? { |key| present?(body[key]) || present?(body[key.to_sym]) }
      return if present

      raise ArgumentError, "Missing required fields for #{path}: one of #{keys.join(', ')}"
    end

    sig { params(value: Object).returns(T::Boolean) }
    def present?(value)
      return false if value.nil?
      return !value.empty? if value.is_a?(String) || value.is_a?(Array) || value.is_a?(Hash)

      true
    end

    sig { params(value: Object).returns(T.nilable(String)) }
    def string_or_nil(value)
      value.is_a?(String) ? value : nil
    end

    sig { params(value: Object).returns(Types::Payload) }
    def normalize_payload(value)
      raise TypeError, "request and response payloads must be hashes" unless value.is_a?(Hash)

      value.each_with_object({}) do |(key, item), output|
        unless key.is_a?(String) || key.is_a?(Symbol)
          raise TypeError, "payload keys must be strings or symbols, got #{key.class}"
        end

        output[key] = normalize_wire_value(item)
      end
    end

    sig { params(value: Object).returns(Types::WireValue) }
    def normalize_wire_value(value)
      case value
      when T::Struct
        normalize_payload(value.serialize)
      when T::Enum
        value.serialize
      when Hash
        normalize_payload(value)
      when Array
        value.map { |item| normalize_wire_value(item) }
      when String, Integer, Float, TrueClass, FalseClass, NilClass
        value
      else
        raise TypeError, "unsupported JSON value: #{value.class}"
      end
    end

    sig { params(value: ResponseValue, path: String).returns(ResponseObject) }
    def expect_response_object(value, path)
      return value if value.is_a?(ResponseObject)

      raise TypeError, "expected an object response from #{path}, got #{value.class}"
    end
  end
end
