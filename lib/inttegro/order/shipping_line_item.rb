# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "shipping_line_item_shipping"
require_relative "shipping_line_item_type"

module Inttegro
  class Order
    # Typed representation of the shipping line item object in the Inttegro API.
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
    #   @return [Inttegro::Order::ShippingLineItemType]
    #
    # @!attribute [r] shipping
    #   Value of the `shipping` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `shipping`.
    #   @return [Inttegro::Order::ShippingLineItemShipping]
    class ShippingLineItem < T::Struct
      const :type, Inttegro::Order::ShippingLineItemType
      const :shipping, Inttegro::Order::ShippingLineItemShipping
    end
  end
end
