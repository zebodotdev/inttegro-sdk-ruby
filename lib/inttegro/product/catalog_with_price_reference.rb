# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Product
    # Typed representation of the catalog with price reference object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] price_id
    #   Existing product price to snapshot onto the order line item. It must belong to the same
    #   application and product.
    #
    #   Required in the API payload. Wire name: `price_id`.
    #   @return [String]
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
    class CatalogWithPriceReference < T::Struct
      const :price_id, String
      const :product_id, String
      const :quantity, Integer
    end
  end
end
