# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../product/line_item"
require_relative "fee_line_item"
require_relative "shipping_line_item"

module Inttegro
  module Shared
    # Typed representation of the line item object in the Inttegro API.
    #
    # @api public
    # @return [Inttegro::Product::LineItem, Inttegro::Shared::FeeLineItem, Inttegro::Shared::ShippingLineItem]
    LineItem = T.type_alias { T.any(Inttegro::Product::LineItem, Inttegro::Shared::FeeLineItem, Inttegro::Shared::ShippingLineItem) }
  end
end
