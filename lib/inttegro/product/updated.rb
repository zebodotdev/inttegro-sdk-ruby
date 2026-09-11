# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "dimensions"
require_relative "price_summary"
require_relative "type"

module Inttegro
  class Product
    # Typed representation of the updated object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Product identifier returned by the update operation.
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
    # @!attribute [r] description
    #   Value of the `description` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] about
    #   Value of the `about` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Product::Type]
    #
    # @!attribute [r] reference
    #   Value of the `reference` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] tax_code
    #   Value of the `tax_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `tax_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] category
    #   Value of the `category` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `category`.
    #   @return [String, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] dimensions
    #   At most one of `physical`, `digital`, or `custom`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `dimensions`.
    #   @return [Inttegro::Product::Dimensions, nil]
    #
    # @!attribute [r] prices
    #   Value of the `prices` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `prices`.
    #   @return [Array<Inttegro::Product::PriceSummary>, nil]
    #
    # @!attribute [r] unit_dim
    #   Value of the `unit_dim` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `unit_dim`.
    #   @return [String, nil]
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] updated_at
    #   Value of the `updated_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `updated_at`.
    #   @return [Time, nil]
    class Updated < T::Struct
      const :id, String
      const :name, String
      const :description, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :type, Inttegro::Product::Type
      const :reference, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :category, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :dimensions, T.nilable(Inttegro::Product::Dimensions), default: nil
      const :prices, T.nilable(T::Array[Inttegro::Product::PriceSummary]), default: nil
      const :unit_dim, T.nilable(String), default: nil
      const :created_at, Time
      const :updated_at, T.nilable(Time), default: nil
    end
  end
end
