# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

require_relative "types"

module Commerce
  # Normalizes Net::HTTP and custom adapter responses at the SDK boundary.
  # Adapter objects are deliberately accepted as Object and validated here so
  # unknown values cannot flow unchecked through the rest of the SDK.
  class TransportResponse
    extend T::Sig

    sig { returns(String) }
    attr_reader :code, :body, :message

    sig { returns(Types::ResponseHeaders) }
    attr_reader :headers

    sig { params(response: Object).void }
    def initialize(response)
      @code = T.let(read_string(response, :code), String)
      @body = T.let(read_string(response, :body), String)
      @message = T.let(read_string(response, :message), String)
      @headers = T.let(normalize_headers(read_headers(response)), Types::ResponseHeaders)
    end

    sig { params(name: String).returns(T.nilable(String)) }
    def [](name)
      pair = @headers.find { |key, _values| key.casecmp?(name) }
      pair&.last&.first
    end

    private

    sig { params(response: Object, name: Symbol).returns(String) }
    def read_string(response, name)
      unless response.respond_to?(name)
        raise TypeError, "HTTP adapter response must respond to ##{name}"
      end

      value = response.public_send(name)
      value.nil? ? "" : value.to_s
    end

    sig { params(response: Object).returns(Object) }
    def read_headers(response)
      return response.public_send(:headers) if response.respond_to?(:headers)
      return response.public_send(:to_hash) if response.respond_to?(:to_hash)

      {}
    end

    sig { params(value: Object).returns(Types::ResponseHeaders) }
    def normalize_headers(value)
      return {} unless value.is_a?(Hash)

      value.each_with_object({}) do |(key, header_value), output|
        values = header_value.is_a?(Array) ? header_value.map(&:to_s) : [header_value.to_s]
        output[key.to_s] = values
      end
    end
  end
end
