# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Typed representation of the variant axis object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] key
    #   Value of the `key` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `key`.
    #   @return [String]
    #
    # @!attribute [r] label
    #   Value of the `label` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `label`.
    #   @return [String]
    #
    # @!attribute [r] position
    #   Value of the `position` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `position`.
    #   @return [Integer]
    class VariantAxis < T::Struct
      const :key, String
      const :label, String
      const :position, Integer
    end
  end
end
