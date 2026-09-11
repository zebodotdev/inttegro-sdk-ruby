# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Money
    # A currency code recognized by the Inttegro API. Individual operations can support a subset
    # of these currencies.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Currency < T::Enum
      enums do
        # Serialized wire value: `ghs`.
        # @return [Inttegro::Money::Currency]
        GHS = new("ghs")
        # Serialized wire value: `usd`.
        # @return [Inttegro::Money::Currency]
        USD = new("usd")
        # Serialized wire value: `gbp`.
        # @return [Inttegro::Money::Currency]
        GBP = new("gbp")
        # Serialized wire value: `eur`.
        # @return [Inttegro::Money::Currency]
        EUR = new("eur")
        # Serialized wire value: `cny`.
        # @return [Inttegro::Money::Currency]
        CNY = new("cny")
      end
    end
  end
end
