# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Typed representation of the complete request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_id
    #   Unique identifier of the order to complete
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    #
    # @!attribute [r] paid_out_of_band
    #   Set to true if payment was received outside Inttegro (e.g., cash, bank transfer, check).
    #   When true, the associated payment will be marked as paid offline before completing the
    #   order.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `paid_out_of_band`.
    #   @return [Boolean, nil]
    class CompleteRequest < T::Struct
      const :order_id, String
      const :paid_out_of_band, T.nilable(T::Boolean), default: nil
    end
  end
end
