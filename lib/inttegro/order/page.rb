# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "order"

module Inttegro
  class Order
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
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] size
    #   The number of orders in this page
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] orders
    #   Value of the `orders` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `orders`.
    #   @return [Array<Inttegro::Order>, nil]
    class Page < T::Struct
      const :number, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
      const :orders, T.nilable(T::Array[Inttegro::Order]), default: nil
    end
  end
end
