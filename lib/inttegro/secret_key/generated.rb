# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "token_type"

module Inttegro
  class SecretKey
    # Newly generated secret key. The token is returned once and cannot be retrieved later.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Secret key identifier.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] label
    #   Optional human-readable label for the secret key.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] token_type
    #   Value of the `token_type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `token_type`.
    #   @return [Inttegro::SecretKey::TokenType]
    #
    # @!attribute [r] issued_at
    #   Value of the `issued_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `issued_at`.
    #   @return [Time]
    #
    # @!attribute [r] token
    #   One-time bearer token for the generated key.
    #
    #   Required in the API payload. Wire name: `token`.
    #   @return [String]
    class Generated < T::Struct
      const :id, String
      const :label, T.nilable(String), default: nil
      const :token_type, Inttegro::SecretKey::TokenType
      const :issued_at, Time
      const :token, String
    end
  end
end
