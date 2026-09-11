# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "discount"
require_relative "discount_line_item_type"

module Inttegro
  class Order
    # Typed representation of the discount line item object in the Inttegro API.
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
    #   @return [Inttegro::Order::DiscountLineItemType]
    #
    # @!attribute [r] discount
    #   Value of the `discount` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `discount`.
    #   @return [Inttegro::Order::Discount]
    class DiscountLineItem < T::Struct
      const :type, Inttegro::Order::DiscountLineItemType
      const :discount, Inttegro::Order::Discount
    end
  end
end
