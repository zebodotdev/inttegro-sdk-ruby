# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../price/price_params"
require_relative "type"

module Inttegro
  class Product
    # Typed representation of the inline details object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] about
    #   Long-form description or marketing copy
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
    # @!attribute [r] name
    #   Product name shown to the customer
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] price
    #   An inline price supplied in a request.
    #
    #   Required in the API payload. Wire name: `price`.
    #   @return [Inttegro::Price::PriceParams]
    #
    # @!attribute [r] quantity
    #   How many units the customer is purchasing
    #
    #   Required in the API payload. Wire name: `quantity`.
    #   @return [Integer]
    #
    # @!attribute [r] reference
    #   Your SKU or internal product reference
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] tax_code
    #   Tax classification code
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `tax_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Product type—affects shipping requirements
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Product::Type]
    class InlineDetails < T::Struct
      const :about, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :name, String
      const :price, Inttegro::Price::PriceParams
      const :quantity, Integer
      const :reference, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :type, Inttegro::Product::Type
    end
  end
end
