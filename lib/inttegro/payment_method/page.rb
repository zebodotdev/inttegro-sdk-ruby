# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "payment_method"

module Inttegro
  class PaymentMethod
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   The page number returned
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] payment_methods
    #   Value of the `payment_methods` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `payment_methods`.
    #   @return [Array<Inttegro::PaymentMethod>]
    #
    # @!attribute [r] size
    #   The number of payment methods in this page
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    class Page < T::Struct
      const :number, Integer
      const :payment_methods, T::Array[Inttegro::PaymentMethod]
      const :size, Integer
    end
  end
end
