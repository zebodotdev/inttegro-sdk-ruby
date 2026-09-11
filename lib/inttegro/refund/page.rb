# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "refund"

module Inttegro
  class Refund
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] refunds
    #   Value of the `refunds` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `refunds`.
    #   @return [Array<Inttegro::Refund>]
    #
    # @!attribute [r] size
    #   Number of refunds returned in this page.
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    class Page < T::Struct
      const :number, Integer
      const :refunds, T::Array[Inttegro::Refund]
      const :size, Integer
    end
  end
end
