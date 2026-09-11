# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "dimensions_custom"
require_relative "dimensions_digital"
require_relative "dimensions_physical"

module Inttegro
  class Product
    # At most one of `physical`, `digital`, or `custom`.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] physical
    #   Value of the `physical` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `physical`.
    #   @return [Inttegro::Product::DimensionsPhysical, nil]
    #
    # @!attribute [r] digital
    #   Value of the `digital` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `digital`.
    #   @return [Inttegro::Product::DimensionsDigital, nil]
    #
    # @!attribute [r] custom
    #   Value of the `custom` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom`.
    #   @return [Inttegro::Product::DimensionsCustom, nil]
    class Dimensions < T::Struct
      const :physical, T.nilable(Inttegro::Product::DimensionsPhysical), default: nil
      const :digital, T.nilable(Inttegro::Product::DimensionsDigital), default: nil
      const :custom, T.nilable(Inttegro::Product::DimensionsCustom), default: nil
    end
  end
end
