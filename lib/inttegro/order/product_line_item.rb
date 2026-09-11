# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "product_line_item_product"
require_relative "product_line_item_type"

module Inttegro
  class Order
    # Typed representation of the product line item object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Order::ProductLineItemType]
    #
    # @!attribute [r] product
    #   Value of the `product` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `product`.
    #   @return [Inttegro::Order::ProductLineItemProduct]
    class ProductLineItem < T::Struct
      const :type, Inttegro::Order::ProductLineItemType
      const :product, Inttegro::Order::ProductLineItemProduct
    end
  end
end
