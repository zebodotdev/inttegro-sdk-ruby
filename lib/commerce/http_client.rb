# frozen_string_literal: true

require "json"
require "net/http"
require "uri"

require_relative "errors"
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
      request = build_request(method, uri, body, headers)

      response =
        if @adapter
          @adapter.call(uri, request)
        else
          http = build_http(uri)
          http.request(request)
        end
      handle_response(response)
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

    def handle_response(response)
      status = response.code.to_i
      body = response.body.to_s
      data = parse_json(body)

      return wrap_response(data) if status < 400

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

    def wrap_response(data)
      case data
      when Hash
        ResponseObject.new(data)
      when Array
        data.map { |item| wrap_response(item) }
      else
        data
      end
    end
  end
end
