# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "payout"

module Inttegro
  class Payout
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Page number returned
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] size
    #   Number of payouts returned
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    #
    # @!attribute [r] payouts
    #   Value of the `payouts` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payouts`.
    #   @return [Array<Inttegro::Payout>, nil]
    class Page < T::Struct
      const :number, Integer
      const :size, Integer
      const :payouts, T.nilable(T::Array[Inttegro::Payout]), default: nil
    end
  end
end
