# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class SecretKey
    # String-backed values accepted by the Inttegro API for Inttegro::SecretKey::AuthResult.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class AuthResult < T::Enum
      enums do
        # Serialized wire value: `succeeded`.
        # @return [Inttegro::SecretKey::AuthResult]
        SUCCEEDED = new("succeeded")
        # Serialized wire value: `failed`.
        # @return [Inttegro::SecretKey::AuthResult]
        FAILED = new("failed")
      end
    end
  end
end
