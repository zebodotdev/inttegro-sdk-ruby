# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "auth_result"

module Inttegro
  class SecretKey
    # Public authentication outcome associated with the selected key.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] secret_key_id
    #   Value of the `secret_key_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `secret_key_id`.
    #   @return [String]
    #
    # @!attribute [r] occurred_at
    #   Value of the `occurred_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `occurred_at`.
    #   @return [Time]
    #
    # @!attribute [r] auth_result
    #   Value of the `auth_result` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `auth_result`.
    #   @return [Inttegro::SecretKey::AuthResult]
    class UsageRow < T::Struct
      const :secret_key_id, String
      const :occurred_at, Time
      const :auth_result, Inttegro::SecretKey::AuthResult
    end
  end
end
