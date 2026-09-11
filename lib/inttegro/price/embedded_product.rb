# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../product/dimensions"
require_relative "../product/media"
require_relative "../product/shipment"
require_relative "../product/type"
require_relative "../purchase_intent/product_attributes_item"

module Inttegro
  class Price
    # Typed representation of the embedded product object in the Inttegro API.
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
    # @!attribute [r] about
    #   Full product description
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] active
    #   Whether product is published and available
    #
    #   Required in the API payload. Wire name: `active`.
    #   @return [Boolean]
    #
    # @!attribute [r] archived_at
    #   Archive timestamp (if archived)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `archived_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] attributes
    #   Product attributes
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attributes`.
    #   @return [Array<Inttegro::PurchaseIntent::ProductAttributesItem>, nil]
    #
    # @!attribute [r] category
    #   Product category
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `category`.
    #   @return [String, nil]
    #
    # @!attribute [r] created_at
    #   Product creation timestamp
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] description
    #   Short description
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] dimensions
    #   Product dimensions and size metadata
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `dimensions`.
    #   @return [Inttegro::Product::Dimensions, nil]
    #
    # @!attribute [r] media
    #   Product media assets
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `media`.
    #   @return [Inttegro::Product::Media, nil]
    #
    # @!attribute [r] name
    #   Product name
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] published_at
    #   When the product was published
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `published_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] reference
    #   External reference or SKU
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] shipment
    #   Shipment and fulfillment details
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `shipment`.
    #   @return [Inttegro::Product::Shipment, nil]
    #
    # @!attribute [r] tax_code
    #   Tax classification code
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `tax_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Product type
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Product::Type]
    #
    # @!attribute [r] unit_dim
    #   Unit dimension label
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `unit_dim`.
    #   @return [String, nil]
    #
    # @!attribute [r] updated_at
    #   Last update timestamp
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `updated_at`.
    #   @return [Time, nil]
    class EmbeddedProduct < T::Struct
      const :id, String
      const :about, T.nilable(String), default: nil
      const :active, T::Boolean
      const :archived_at, T.nilable(Time), default: nil
      const :attributes, T.nilable(T::Array[Inttegro::PurchaseIntent::ProductAttributesItem]), default: nil
      const :category, T.nilable(String), default: nil
      const :created_at, Time
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :dimensions, T.nilable(Inttegro::Product::Dimensions), default: nil
      const :media, T.nilable(Inttegro::Product::Media), default: nil
      const :name, String
      const :published_at, T.nilable(Time), default: nil
      const :reference, T.nilable(String), default: nil
      const :shipment, T.nilable(Inttegro::Product::Shipment), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :type, Inttegro::Product::Type
      const :unit_dim, T.nilable(String), default: nil
      const :updated_at, T.nilable(Time), default: nil
    end
  end
end
