# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Price
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] price_id
    #   The unique identifier of the price to update
    #
    #   Required in the API payload. Wire name: `price_id`.
    #   @return [String]
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
    class UpdateRequest < T::Struct
      const :price_id, String
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
    end
  end
end
