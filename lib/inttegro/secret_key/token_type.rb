# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class SecretKey
    # String-backed values accepted by the Inttegro API for Inttegro::SecretKey::TokenType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class TokenType < T::Enum
      enums do
        # Serialized wire value: `bearer`.
        # @return [Inttegro::SecretKey::TokenType]
        BEARER = new("bearer")
      end
    end
  end
end
