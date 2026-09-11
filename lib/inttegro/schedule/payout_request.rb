# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Schedule
    # Typed representation of the payout request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] destination_id
    #   Financial account that should receive the payout
    #
    #   Required in the API payload. Wire name: `destination_id`.
    #   @return [String]
    #
    # @!attribute [r] execute_after
    #   Optional future time after which execution may begin
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `execute_after`.
    #   @return [Time, nil]
    #
    # @!attribute [r] max_amount
    #   Maximum amount, in the smallest currency unit, that this payout may transfer
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `max_amount`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] reference
    #   Merchant reference carried on the payout
    #
    #   Required in the API payload. Wire name: `reference`.
    #   @return [String]
    class PayoutRequest < T::Struct
      const :destination_id, String
      const :execute_after, T.nilable(Time), default: nil
      const :max_amount, T.nilable(Integer), default: nil
      const :reference, String
    end
  end
end
