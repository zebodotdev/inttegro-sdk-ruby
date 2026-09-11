# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"

module Inttegro
  class Order
    # Typed representation of the shipping line item shipping object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Immutable order-line identifier with the `oli_` prefix.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] tax_code
    #   Value of the `tax_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `tax_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] label
    #   Value of the `label` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] fee
    #   Value of the `fee` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `fee`.
    #   @return [Inttegro::Money::Amount]
    class ShippingLineItemShipping < T::Struct
      const :id, String
      const :tax_code, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :fee, Inttegro::Money::Amount
    end
  end
end
