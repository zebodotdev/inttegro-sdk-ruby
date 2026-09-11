# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Product
    # Typed representation of the dimensions physical object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] weight_unit
    #   Value of the `weight_unit` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `weight_unit`.
    #   @return [String, nil]
    #
    # @!attribute [r] weight
    #   Value of the `weight` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `weight`.
    #   @return [Integer, Float, nil]
    #
    # @!attribute [r] size
    #   Legacy alias for weight in requests.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `size`.
    #   @return [Integer, Float, nil]
    #
    # @!attribute [r] volume_unit
    #   Value of the `volume_unit` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `volume_unit`.
    #   @return [String, nil]
    #
    # @!attribute [r] volume
    #   Value of the `volume` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `volume`.
    #   @return [Integer, Float, nil]
    #
    # @!attribute [r] length
    #   Value of the `length` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `length`.
    #   @return [Integer, Float, nil]
    #
    # @!attribute [r] height
    #   Value of the `height` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `height`.
    #   @return [Integer, Float, nil]
    #
    # @!attribute [r] width
    #   Value of the `width` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `width`.
    #   @return [Integer, Float, nil]
    class DimensionsPhysical < T::Struct
      const :weight_unit, T.nilable(String), default: nil
      const :weight, T.nilable(T.any(Integer, Float)), default: nil
      const :size, T.nilable(T.any(Integer, Float)), default: nil
      const :volume_unit, T.nilable(String), default: nil
      const :volume, T.nilable(T.any(Integer, Float)), default: nil
      const :length, T.nilable(T.any(Integer, Float)), default: nil
      const :height, T.nilable(T.any(Integer, Float)), default: nil
      const :width, T.nilable(T.any(Integer, Float)), default: nil
    end
  end
end
