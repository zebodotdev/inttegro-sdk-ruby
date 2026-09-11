# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "attribute"
require_relative "dimensions"
require_relative "media"
require_relative "price_summary"
require_relative "shipment"
require_relative "type"

module Inttegro
  # Typed representation of the product object in the Inttegro API.
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] id
  #   Unique product identifier with prod_ prefix
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] type
  #   Product type
  #
  #   Required in the API payload. Wire name: `type`.
  #   @return [Inttegro::Product::Type]
  #
  # @!attribute [r] reference
  #   External reference or SKU
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
  #   @return [String, nil]
  #
  # @!attribute [r] name
  #   Product name
  #
  #   Required in the API payload. Wire name: `name`.
  #   @return [String]
  #
  # @!attribute [r] description
  #   Short description
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
  #   @return [String, nil]
  #
  # @!attribute [r] about
  #   Full product description
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
  #   @return [String, nil]
  #
  # @!attribute [r] tax_code
  #   Tax classification code
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `tax_code`.
  #   @return [String, nil]
  #
  # @!attribute [r] category
  #   Product category
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `category`.
  #   @return [String, nil]
  #
  # @!attribute [r] prices
  #   Non-archived prices that belong to this product
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `prices`.
  #   @return [Array<Inttegro::Product::PriceSummary>, nil]
  #
  # @!attribute [r] shipment
  #   Value of the `shipment` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `shipment`.
  #   @return [Inttegro::Product::Shipment, nil]
  #
  # @!attribute [r] media
  #   Value of the `media` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `media`.
  #   @return [Inttegro::Product::Media, nil]
  #
  # @!attribute [r] attributes
  #   Product attributes
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `attributes`.
  #   @return [Array<Inttegro::Product::Attribute>, nil]
  #
  # @!attribute [r] dimensions
  #   At most one of `physical`, `digital`, or `custom`.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `dimensions`.
  #   @return [Inttegro::Product::Dimensions, nil]
  #
  # @!attribute [r] custom_data
  #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
  #   collection rather than a raw map.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
  #   @return [Hash{String => String}, nil]
  #
  # @!attribute [r] active
  #   Whether product is published and available
  #
  #   Required in the API payload. Wire name: `active`.
  #   @return [Boolean]
  #
  # @!attribute [r] created_at
  #   Product creation timestamp
  #
  #   Required in the API payload. Wire name: `created_at`.
  #   @return [Time]
  #
  # @!attribute [r] updated_at
  #   Last update timestamp
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `updated_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] archived_at
  #   Archive timestamp (if archived)
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `archived_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] published_at
  #   When the product was published
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `published_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] unit_dim
  #   Unit dimension label
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `unit_dim`.
  #   @return [String, nil]
  class Product
    const :id, String
    const :type, Inttegro::Product::Type
    const :reference, T.nilable(String), default: nil
    const :name, String
    const :description, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :category, T.nilable(String), default: nil
    const :prices, T.nilable(T::Array[Inttegro::Product::PriceSummary]), default: nil
    const :shipment, T.nilable(Inttegro::Product::Shipment), default: nil
    const :media, T.nilable(Inttegro::Product::Media), default: nil
    const :attributes, T.nilable(T::Array[Inttegro::Product::Attribute]), default: nil
    const :dimensions, T.nilable(Inttegro::Product::Dimensions), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :active, T::Boolean
    const :created_at, Time
    const :updated_at, T.nilable(Time), default: nil
    const :archived_at, T.nilable(Time), default: nil
    const :published_at, T.nilable(Time), default: nil
    const :unit_dim, T.nilable(String), default: nil
  end
end
