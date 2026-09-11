# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "currency"

module Inttegro
  module Money
    # Typed representation of the amount object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] currency
    #   A currency code recognized by the Inttegro API. Individual operations can support a subset
    #   of these currencies.
    #
    #   Required in the API payload. Wire name: `currency`.
    #   @return [Inttegro::Money::Currency]
    #
    # @!attribute [r] value
    #   Amount in the currency's smallest unit.
    #
    #   Required in the API payload. Wire name: `value`.
    #   @return [Integer]
    class Amount < T::Struct
      const :currency, Inttegro::Money::Currency
      const :value, Integer
    end
  end
end
