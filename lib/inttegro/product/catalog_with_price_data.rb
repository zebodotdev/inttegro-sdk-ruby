# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../price/price_params"

module Inttegro
  class Product
    # Typed representation of the catalog with price data object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] price
    #   An inline price supplied in a request.
    #
    #   Required in the API payload. Wire name: `price`.
    #   @return [Inttegro::Price::PriceParams]
    #
    # @!attribute [r] product_id
    #   Existing catalog product ID to snapshot onto the order line item
    #
    #   Required in the API payload. Wire name: `product_id`.
    #   @return [String]
    #
    # @!attribute [r] quantity
    #   How many units of the catalog product the customer is purchasing
    #
    #   Required in the API payload. Wire name: `quantity`.
    #   @return [Integer]
    class CatalogWithPriceData < T::Struct
      const :price, Inttegro::Price::PriceParams
      const :product_id, String
      const :quantity, Integer
    end
  end
end
