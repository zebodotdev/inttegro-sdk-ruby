# frozen_string_literal: true

module Commerce
  class Error < StandardError; end

  class NetworkError < Error
    attr_reader :original_error

    def initialize(message, original_error = nil)
      super(message)
      @original_error = original_error
    end
  end

  class TimeoutError < NetworkError; end

  class APIError < Error
    attr_reader :status, :code, :type, :url, :detail, :fix_code, :cause, :body, :data

    def initialize(
      message,
      status:,
      code: nil,
      type: nil,
      url: nil,
      detail: nil,
      fix_code: nil,
      cause: nil,
      body: nil,
      data: nil
    )
      super(message)
      @status = status
      @code = code
      @type = type
      @url = url
      @detail = detail
      @fix_code = fix_code
      @cause = cause
      @body = body
      @data = data
    end
  end

  class AuthenticationError < APIError; end

  class RateLimitError < APIError
    attr_reader :retry_after

    def initialize(
      message,
      status:,
      code: nil,
      type: nil,
      url: nil,
      detail: nil,
      fix_code: nil,
      cause: nil,
      body: nil,
      data: nil,
      retry_after: nil
    )
      super(
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
      @retry_after = retry_after
    end
  end
end
