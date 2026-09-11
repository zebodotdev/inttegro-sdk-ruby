# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "usage_order"

module Inttegro
  class PurchaseIntent
    # Exactly one of multi_use or single_use is returned as true. Order is present after a
    # single-use intent is consumed.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] multi_use
    #   Value of the `multi_use` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `multi_use`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] order
    #   Value of the `order` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `order`.
    #   @return [Inttegro::PurchaseIntent::UsageOrder, nil]
    #
    # @!attribute [r] single_use
    #   Value of the `single_use` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `single_use`.
    #   @return [Boolean, nil]
    class Usage < T::Struct
      const :multi_use, T.nilable(T::Boolean), default: nil
      const :order, T.nilable(Inttegro::PurchaseIntent::UsageOrder), default: nil
      const :single_use, T.nilable(T::Boolean), default: nil
    end
  end
end
