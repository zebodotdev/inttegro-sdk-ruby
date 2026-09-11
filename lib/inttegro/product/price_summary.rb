# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"

module Inttegro
  class Product
    # Typed representation of the price summary object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Unique price identifier with pr_ prefix
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] active
    #   Whether this price is active and usable in new flows
    #
    #   Required in the API payload. Wire name: `active`.
    #   @return [Boolean]
    #
    # @!attribute [r] label
    #   Short label for this price
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] nominal
    #   Price amount
    #
    #   Required in the API payload. Wire name: `nominal`.
    #   @return [Inttegro::Money::Amount]
    class PriceSummary < T::Struct
      const :id, String
      const :active, T::Boolean
      const :label, T.nilable(String), default: nil
      const :nominal, Inttegro::Money::Amount
    end
  end
end
