# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../price/price"

module Inttegro
  class Order
    # Typed representation of the product line item product object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Immutable order-line identifier with the `oli_` prefix.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] product_id
    #   Source catalog product ID when this line snapshots a catalog product.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] price_id
    #   Source catalog price ID when this line snapshots a saved price.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `price_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] reference
    #   Value of the `reference` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] about
    #   Value of the `about` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] tax_code
    #   Value of the `tax_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `tax_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] category
    #   Value of the `category` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `category`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `type`.
    #   @return [String, nil]
    #
    # @!attribute [r] price
    #   An inline price returned by the API.
    #
    #   Required in the API payload. Wire name: `price`.
    #   @return [Inttegro::Price]
    #
    # @!attribute [r] quantity
    #   Value of the `quantity` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `quantity`.
    #   @return [Integer]
    class ProductLineItemProduct < T::Struct
      const :id, String
      const :product_id, T.nilable(String), default: nil
      const :price_id, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :name, String
      const :category, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
      const :price, Inttegro::Price
      const :quantity, Integer
    end
  end
end
