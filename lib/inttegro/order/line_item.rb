# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "discount_line_item"
require_relative "fee_line_item"
require_relative "product_line_item"
require_relative "shipping_line_item"

module Inttegro
  class Order
    # Typed representation of the line item object in the Inttegro API.
    #
    # @api public
    # @return [Inttegro::Order::ProductLineItem, Inttegro::Order::FeeLineItem, Inttegro::Order::ShippingLineItem, Inttegro::Order::DiscountLineItem]
    LineItem = T.type_alias { T.any(Inttegro::Order::ProductLineItem, Inttegro::Order::FeeLineItem, Inttegro::Order::ShippingLineItem, Inttegro::Order::DiscountLineItem) }
  end
end
