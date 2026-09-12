# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Curated response metadata. This is body metadata and does not replace native HTTP status or
    # response headers.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] request_id
    #   Inttegro request identifier for this API response.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `request_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] debug
    #   Optional debug information returned only when explicitly enabled and authorized.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `debug`.
    #   @return [Hash{String => Object}, nil]
    class ResponseMeta < T::Struct
      const :request_id, T.nilable(String), default: nil
      const :debug, T.nilable(T::Hash[String, Object]), default: nil
    end
  end
end
