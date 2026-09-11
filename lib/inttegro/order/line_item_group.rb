# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"
require_relative "line_item"

module Inttegro
  class Order
    # Cart contents and totals
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] line_items
    #   Array of products, fees, and shipping charges
    #
    #   Required in the API payload. Wire name: `line_items`.
    #   @return [Array<Inttegro::Order::LineItem>]
    #
    # @!attribute [r] total
    #   Value of the `total` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `total`.
    #   @return [Inttegro::Money::Amount]
    class LineItemGroup < T::Struct
      const :line_items, T::Array[Inttegro::Order::LineItem]
      const :total, Inttegro::Money::Amount
    end
  end
end
