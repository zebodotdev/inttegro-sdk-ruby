# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"

module Inttegro
  class PurchaseIntent
    # Typed representation of the original price object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] active
    #   Whether the resolved comparison price is active
    #
    #   Required in the API payload. Wire name: `active`.
    #   @return [Boolean]
    #
    # @!attribute [r] id
    #   Catalog price ID when the comparison price is not inline
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] label
    #   Catalog price label when available
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] nominal
    #   Value of the `nominal` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `nominal`.
    #   @return [Inttegro::Money::Amount]
    class OriginalPrice < T::Struct
      const :active, T::Boolean
      const :id, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :nominal, Inttegro::Money::Amount
    end
  end
end
