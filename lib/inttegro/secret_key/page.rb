# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "secret_key"

module Inttegro
  class SecretKey
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
    # @!attribute [r] size
    #   Value of the `size` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    #
    # @!attribute [r] count
    #   Value of the `count` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `count`.
    #   @return [Integer]
    #
    # @!attribute [r] total
    #   Value of the `total` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `total`.
    #   @return [Integer]
    #
    # @!attribute [r] has_more
    #   Value of the `has_more` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `has_more`.
    #   @return [Boolean]
    #
    # @!attribute [r] keys
    #   Value of the `keys` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `keys`.
    #   @return [Array<Inttegro::SecretKey>]
    class Page < T::Struct
      const :number, Integer
      const :size, Integer
      const :count, Integer
      const :total, Integer
      const :has_more, T::Boolean
      const :keys, T::Array[Inttegro::SecretKey]
    end
  end
end
