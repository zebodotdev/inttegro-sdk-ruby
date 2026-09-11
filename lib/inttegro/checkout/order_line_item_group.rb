# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"
require_relative "../shared/line_item"

module Inttegro
  module Checkout
    # Typed representation of the order line item group object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] line_items
    #   Value of the `line_items` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line_items`.
    #   @return [Array<Inttegro::Shared::LineItem>, nil]
    #
    # @!attribute [r] total
    #   Value of the `total` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `total`.
    #   @return [Inttegro::Money::Amount, nil]
    class OrderLineItemGroup < T::Struct
      const :line_items, T.nilable(T::Array[Inttegro::Shared::LineItem]), default: nil
      const :total, T.nilable(Inttegro::Money::Amount), default: nil
    end
  end
end
