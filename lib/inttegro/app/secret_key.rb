# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Application
    # Typed representation of the secret key object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] token_type
    #   Value of the `token_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `token_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] issued_at
    #   Value of the `issued_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `issued_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] token
    #   Value of the `token` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `token`.
    #   @return [String, nil]
    class SecretKey < T::Struct
      const :id, T.nilable(String), default: nil
      const :token_type, T.nilable(String), default: nil
      const :issued_at, T.nilable(Time), default: nil
      const :token, T.nilable(String), default: nil
    end
  end
end
