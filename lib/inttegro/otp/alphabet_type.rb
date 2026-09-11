# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module OTP
    # Predefined alphabet type (mutually exclusive with token_alphabet)
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class AlphabetType < T::Enum
      enums do
        # Serialized wire value: `numeric`.
        # @return [Inttegro::OTP::AlphabetType]
        NUMERIC = new("numeric")
        # Serialized wire value: `alpha`.
        # @return [Inttegro::OTP::AlphabetType]
        ALPHA = new("alpha")
        # Serialized wire value: `alphanumeric`.
        # @return [Inttegro::OTP::AlphabetType]
        ALPHANUMERIC = new("alphanumeric")
      end
    end
  end
end
