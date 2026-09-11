# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "fee_line_item_fee"
require_relative "fee_line_item_type"

module Inttegro
  class Order
    # Typed representation of the fee line item object in the Inttegro API.
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
    #   @return [Inttegro::Order::FeeLineItemType]
    #
    # @!attribute [r] fee
    #   Value of the `fee` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `fee`.
    #   @return [Inttegro::Order::FeeLineItemFee]
    class FeeLineItem < T::Struct
      const :type, Inttegro::Order::FeeLineItemType
      const :fee, Inttegro::Order::FeeLineItemFee
    end
  end
end
