# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "attribute"
require_relative "dimensions"
require_relative "media"
require_relative "shipment_input"
require_relative "type"

module Inttegro
  class Product
    # Typed representation of the create request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Product type - determines fulfillment requirements
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Product::Type]
    #
    # @!attribute [r] reference
    #   External reference or SKU from your system
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Customer-facing product name
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] description
    #   Short product description or tagline
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] about
    #   Full product description with details and features
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] tax_code
    #   Tax classification code for tax calculations
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `tax_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] category
    #   Product category for organization
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `category`.
    #   @return [String, nil]
    #
    # @!attribute [r] shipment
    #   Value of the `shipment` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `shipment`.
    #   @return [Inttegro::Product::ShipmentInput, nil]
    #
    # @!attribute [r] dimensions
    #   At most one of `physical`, `digital`, or `custom`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `dimensions`.
    #   @return [Inttegro::Product::Dimensions, nil]
    #
    # @!attribute [r] unit_dimension
    #   Value of the `unit_dimension` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `unit_dimension`.
    #   @return [String, nil]
    #
    # @!attribute [r] media
    #   Value of the `media` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `media`.
    #   @return [Inttegro::Product::Media, nil]
    #
    # @!attribute [r] attributes
    #   Product attributes (size, color, material, etc.)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attributes`.
    #   @return [Array<Inttegro::Product::Attribute>, nil]
    #
    # @!attribute [r] publish
    #   Whether to publish the product immediately
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `publish`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    class CreateRequest < T::Struct
      const :type, Inttegro::Product::Type
      const :reference, T.nilable(String), default: nil
      const :name, String
      const :description, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :category, T.nilable(String), default: nil
      const :shipment, T.nilable(Inttegro::Product::ShipmentInput), default: nil
      const :dimensions, T.nilable(Inttegro::Product::Dimensions), default: nil
      const :unit_dimension, T.nilable(String), default: nil
      const :media, T.nilable(Inttegro::Product::Media), default: nil
      const :attributes, T.nilable(T::Array[Inttegro::Product::Attribute]), default: nil
      const :publish, T.nilable(T::Boolean), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    end
  end
end
