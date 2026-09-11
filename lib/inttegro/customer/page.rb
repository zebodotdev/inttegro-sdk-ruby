# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "customer"

module Inttegro
  class Customer
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] customers
    #   Value of the `customers` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `customers`.
    #   @return [Array<Inttegro::Customer>]
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] size
    #   Number of customers returned
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    class Page < T::Struct
      const :customers, T::Array[Inttegro::Customer]
      const :number, Integer
      const :size, Integer
    end
  end
end
