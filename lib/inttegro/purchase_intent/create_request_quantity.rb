# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Quantity bounds the Buy link should enforce. Omit max when the Buy link has no upper
    # quantity bound. When present, max must be greater than or equal to min.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] min
    #   Minimum quantity the customer can buy
    #
    #   Required in the API payload. Wire name: `min`.
    #   @return [Integer]
    #
    # @!attribute [r] max
    #   Optional maximum quantity the customer can buy. It must be greater than or equal to min.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `max`.
    #   @return [Integer, nil]
    class CreateRequestQuantity < T::Struct
      const :min, Integer
      const :max, T.nilable(Integer), default: nil
    end
  end
end
