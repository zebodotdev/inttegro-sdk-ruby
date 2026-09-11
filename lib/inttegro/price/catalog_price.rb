# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"
require_relative "embedded_product"

module Inttegro
  class Price
    # Typed representation of the catalog price object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Unique price identifier with pr_ prefix
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] label
    #   Short label for this price
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] about
    #   Longer description of this price
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] active
    #   Whether this price is active and usable in new flows
    #
    #   Required in the API payload. Wire name: `active`.
    #   @return [Boolean]
    #
    # @!attribute [r] nominal
    #   Price amount
    #
    #   Required in the API payload. Wire name: `nominal`.
    #   @return [Inttegro::Money::Amount]
    #
    # @!attribute [r] product_id
    #   Product ID when the operation returns the relationship by reference
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] product
    #   Embedded product details, if this price belongs to a product
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product`.
    #   @return [Inttegro::Price::EmbeddedProduct, nil]
    #
    # @!attribute [r] created_at
    #   Price creation timestamp
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
    class CatalogPrice < T::Struct
      const :id, String
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :active, T::Boolean
      const :nominal, Inttegro::Money::Amount
      const :product_id, T.nilable(String), default: nil
      const :product, T.nilable(Inttegro::Price::EmbeddedProduct), default: nil
      const :created_at, Time
      const :updated_at, T.nilable(Time), default: nil
      const :archived_at, T.nilable(Time), default: nil
    end
  end
end
