# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

require_relative "types"

module Inttegro
  # Decoded SDK value plus response-only HTTP metadata.
  class APIResponse < T::Struct
    extend T::Sig

    const :data, Object
    const :status, Integer
    const :headers, Types::ResponseHeaders
    const :meta, T.nilable(Types::Payload), default: nil

    sig { returns(T.nilable(String)) }
    def request_id
      header("x-request-id")
    end

    sig { returns(T.nilable(String)) }
    def retry_after
      header("retry-after")
    end

    sig { params(data: Object).returns(APIResponse) }
    def with_data(data)
      APIResponse.new(data: data, status: status, headers: headers, meta: meta)
    end

    private

    sig { params(name: String).returns(T.nilable(String)) }
    def header(name)
      pair = headers.find { |key, _values| key.casecmp?(name) }
      pair&.last&.first
    end
  end
end
