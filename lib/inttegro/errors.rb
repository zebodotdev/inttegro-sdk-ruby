# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

require_relative "types"
require_relative "error_reporting"

module Inttegro
  class Error < StandardError
    extend T::Sig

    sig { returns(T.nilable(ErrorReport)) }
    attr_accessor :report

    sig { params(message: String).void }
    def initialize(message)
      super(message)
      @report = T.let(nil, T.nilable(ErrorReport))
    end
  end

  class NetworkError < Error
    extend T::Sig

    sig { returns(T.nilable(Exception)) }
    attr_reader :original_error

    sig { params(message: String, original_error: T.nilable(Exception)).void }
    def initialize(message, original_error = nil)
      super(message)
      @original_error = original_error
    end
  end

  class TimeoutError < NetworkError; end

  class APIError < Error
    extend T::Sig

    sig { returns(Integer) }
    attr_reader :status

    sig { returns(T.nilable(String)) }
    attr_reader :code, :type, :url, :detail, :fix_code, :cause, :body, :request_id

    sig { returns(Types::WireValue) }
    attr_reader :data

    sig do
      params(
        message: String,
        status: Integer,
        code: T.nilable(String),
        type: T.nilable(String),
        url: T.nilable(String),
        detail: T.nilable(String),
        fix_code: T.nilable(String),
        cause: T.nilable(String),
        body: T.nilable(String),
        data: Types::WireValue,
        request_id: T.nilable(String)
      ).void
    end
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
      request_id: nil
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
      @request_id = request_id
    end
  end

  class AuthenticationError < APIError; end

  class RateLimitError < APIError
    extend T::Sig

    sig { returns(T.nilable(Integer)) }
    attr_reader :retry_after

    sig do
      params(
        message: String,
        status: Integer,
        code: T.nilable(String),
        type: T.nilable(String),
        url: T.nilable(String),
        detail: T.nilable(String),
        fix_code: T.nilable(String),
        cause: T.nilable(String),
        body: T.nilable(String),
        data: Types::WireValue,
        retry_after: T.nilable(Integer),
        request_id: T.nilable(String)
      ).void
    end
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
      retry_after: nil,
      request_id: nil
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
        data: data,
        request_id: request_id
      )
      @retry_after = retry_after
    end
  end
end
