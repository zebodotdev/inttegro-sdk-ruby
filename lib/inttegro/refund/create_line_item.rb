# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount_params"
require_relative "reason"

module Inttegro
  class Refund
    # Typed representation of the create line item object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_line_item_id
    #   Strong identifier for the paid order line item being refunded.
    #
    #   Required in the API payload. Wire name: `order_line_item_id`.
    #   @return [String]
    #
    # @!attribute [r] reason
    #   Value of the `reason` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason`.
    #   @return [Inttegro::Refund::Reason, nil]
    #
    # @!attribute [r] reason_details
    #   Line-specific explanation. Requires a line-level reason; required when that reason is
    #   `custom`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason_details`.
    #   @return [String, nil]
    #
    # @!attribute [r] refund_amount
    #   Value of the `refund_amount` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `refund_amount`.
    #   @return [Inttegro::Money::AmountParams]
    class CreateLineItem < T::Struct
      const :order_line_item_id, String
      const :reason, T.nilable(Inttegro::Refund::Reason), default: nil
      const :reason_details, T.nilable(String), default: nil
      const :refund_amount, Inttegro::Money::AmountParams
    end
  end
end
