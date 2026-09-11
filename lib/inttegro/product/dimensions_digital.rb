# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Product
    # Typed representation of the dimensions digital object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] bytes
    #   Value of the `bytes` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `bytes`.
    #   @return [Integer, Float, nil]
    #
    # @!attribute [r] size_unit
    #   Value of the `size_unit` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `size_unit`.
    #   @return [String, nil]
    #
    # @!attribute [r] size
    #   Value of the `size` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `size`.
    #   @return [Integer, Float, nil]
    class DimensionsDigital < T::Struct
      const :bytes, T.nilable(T.any(Integer, Float)), default: nil
      const :size_unit, T.nilable(String), default: nil
      const :size, T.nilable(T.any(Integer, Float)), default: nil
    end
  end
end
