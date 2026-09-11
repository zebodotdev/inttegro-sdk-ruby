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
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] product_id
    #   Product ID to update
    #
    #   Required in the API payload. Wire name: `product_id`.
    #   @return [String]
    #
    # @!attribute [r] type
    #   Product type. If provided, it must equal the existing type.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `type`.
    #   @return [Inttegro::Product::Type, nil]
    #
    # @!attribute [r] name
    #   Product name
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] description
    #   Short description
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] about
    #   Full description
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
    # @!attribute [r] images
    #   Legacy image list. Mutually exclusive with `media`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `images`.
    #   @return [Array<String>, nil]
    #
    # @!attribute [r] attributes
    #   Product attributes
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attributes`.
    #   @return [Array<Inttegro::Product::Attribute>, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    class UpdateRequest < T::Struct
      const :product_id, String
      const :type, T.nilable(Inttegro::Product::Type), default: nil
      const :name, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :category, T.nilable(String), default: nil
      const :shipment, T.nilable(Inttegro::Product::ShipmentInput), default: nil
      const :dimensions, T.nilable(Inttegro::Product::Dimensions), default: nil
      const :unit_dimension, T.nilable(String), default: nil
      const :media, T.nilable(Inttegro::Product::Media), default: nil
      const :images, T.nilable(T::Array[String]), default: nil
      const :attributes, T.nilable(T::Array[Inttegro::Product::Attribute]), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    end
  end
end
