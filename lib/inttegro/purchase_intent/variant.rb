# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "price"
require_relative "product"

module Inttegro
  class PurchaseIntent
    # Typed representation of the variant object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] active
    #   Value of the `active` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `active`.
    #   @return [Boolean]
    #
    # @!attribute [r] position
    #   Value of the `position` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `position`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] price
    #   Value of the `price` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `price`.
    #   @return [Inttegro::PurchaseIntent::Price, nil]
    #
    # @!attribute [r] product
    #   Value of the `product` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product`.
    #   @return [Inttegro::PurchaseIntent::Product, nil]
    #
    # @!attribute [r] product_id
    #   Value of the `product_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `product_id`.
    #   @return [String]
    #
    # @!attribute [r] variant_values
    #   Product variant attribute selections keyed by attribute name.
    #
    #   Required in the API payload. Wire name: `variant_values`.
    #   @return [Hash{String => String}]
    class Variant < T::Struct
      const :active, T::Boolean
      const :position, T.nilable(Integer), default: nil
      const :price, T.nilable(Inttegro::PurchaseIntent::Price), default: nil
      const :product, T.nilable(Inttegro::PurchaseIntent::Product), default: nil
      const :product_id, String
      const :variant_values, T::Hash[String, String]
    end
  end
end
