# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount_params"

module Inttegro
  class Price
    # Typed representation of the catalog price params object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] product_id
    #   Optional product ID to associate this price with. Once set, cannot be changed.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] label
    #   Short label for this price (max 100 characters)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] about
    #   Longer description of this price (max 500 characters)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] amount
    #   Value of the `amount` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `amount`.
    #   @return [Inttegro::Money::AmountParams]
    class CatalogPriceParams < T::Struct
      const :product_id, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :amount, Inttegro::Money::AmountParams
    end
  end
end
