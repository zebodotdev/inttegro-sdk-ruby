# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "create_request_price"
require_relative "create_request_product"
require_relative "create_request_quantity"
require_relative "create_request_usage"

module Inttegro
  class PurchaseIntent
    # Typed representation of the create request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] product
    #   Product selection with optional variant-set configuration. Use this instead of product_id.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product`.
    #   @return [Inttegro::PurchaseIntent::CreateRequestProduct, nil]
    #
    # @!attribute [r] product_id
    #   App-owned product ID to sell through the Buy link when not using product
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] price
    #   Price selection for the Buy link. Send exactly one of id or nominal and at most one of
    #   original or original_id.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `price`.
    #   @return [Inttegro::PurchaseIntent::CreateRequestPrice, nil]
    #
    # @!attribute [r] price_id
    #   Active, unarchived app-owned price ID that belongs to the selected product
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `price_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] quantity
    #   Quantity bounds the Buy link should enforce. Omit max when the Buy link has no upper
    #   quantity bound. When present, max must be greater than or equal to min.
    #
    #   Required in the API payload. Wire name: `quantity`.
    #   @return [Inttegro::PurchaseIntent::CreateRequestQuantity]
    #
    # @!attribute [r] usage
    #   Optional link-use policy. Omit to create a reusable Buy link.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `usage`.
    #   @return [Inttegro::PurchaseIntent::CreateRequestUsage, nil]
    #
    # @!attribute [r] expires_at
    #   Future RFC3339 timestamp after which the Buy link stops accepting purchases
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_at`.
    #   @return [Time, nil]
    class CreateRequest < T::Struct
      const :product, T.nilable(Inttegro::PurchaseIntent::CreateRequestProduct), default: nil
      const :product_id, T.nilable(String), default: nil
      const :price, T.nilable(Inttegro::PurchaseIntent::CreateRequestPrice), default: nil
      const :price_id, T.nilable(String), default: nil
      const :quantity, Inttegro::PurchaseIntent::CreateRequestQuantity
      const :usage, T.nilable(Inttegro::PurchaseIntent::CreateRequestUsage), default: nil
      const :expires_at, T.nilable(Time), default: nil
    end
  end
end
