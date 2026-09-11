# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "variant"
require_relative "variant_axis"

module Inttegro
  class PurchaseIntent
    # Typed representation of the variant set object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] active
    #   Value of the `active` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `active`.
    #   @return [Boolean]
    #
    # @!attribute [r] default_product_id
    #   Value of the `default_product_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `default_product_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] description
    #   Value of the `description` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] reference
    #   Value of the `reference` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] variant_axes
    #   Value of the `variant_axes` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `variant_axes`.
    #   @return [Array<Inttegro::PurchaseIntent::VariantAxis>]
    #
    # @!attribute [r] variants
    #   Value of the `variants` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `variants`.
    #   @return [Array<Inttegro::PurchaseIntent::Variant>]
    class VariantSet < T::Struct
      const :active, T::Boolean
      const :default_product_id, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :name, String
      const :reference, T.nilable(String), default: nil
      const :variant_axes, T::Array[Inttegro::PurchaseIntent::VariantAxis]
      const :variants, T::Array[Inttegro::PurchaseIntent::Variant]
    end
  end
end
