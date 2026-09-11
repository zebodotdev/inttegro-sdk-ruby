# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Typed representation of the cancel request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_id
    #   Unique identifier of the order to cancel
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    #
    # @!attribute [r] reason
    #   Optional reason for cancelling the order
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason`.
    #   @return [String, nil]
    #
    # @!attribute [r] execute_refund
    #   Whether the cancellation evidence should record that a refund was requested. This does not
    #   execute a refund.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `execute_refund`.
    #   @return [Boolean, nil]
    class CancelRequest < T::Struct
      const :order_id, String
      const :reason, T.nilable(String), default: nil
      const :execute_refund, T.nilable(T::Boolean), default: nil
    end
  end
end
