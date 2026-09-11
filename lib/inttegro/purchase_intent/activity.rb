# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"
require_relative "activity_attribution"
require_relative "activity_type"
require_relative "activity_visitor"

module Inttegro
  class PurchaseIntent
    # Typed representation of the activity object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] amount
    #   Value of the `amount` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `amount`.
    #   @return [Inttegro::Money::Amount, nil]
    #
    # @!attribute [r] attribution
    #   Value of the `attribution` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attribution`.
    #   @return [Inttegro::PurchaseIntent::ActivityAttribution, nil]
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] error_code
    #   Value of the `error_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `error_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] id
    #   Activity event ID with saleevt_ prefix
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] order_id
    #   Value of the `order_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `order_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] payment_id
    #   Value of the `payment_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] product_id
    #   Value of the `product_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] purchase_intent_id
    #   Purchase intent ID with sale_ prefix
    #
    #   Required in the API payload. Wire name: `purchase_intent_id`.
    #   @return [String]
    #
    # @!attribute [r] quantity
    #   Value of the `quantity` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `quantity`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] source
    #   Value of the `source` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `source`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::PurchaseIntent::ActivityType]
    #
    # @!attribute [r] variant_product_id
    #   Value of the `variant_product_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `variant_product_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] visitor
    #   Value of the `visitor` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `visitor`.
    #   @return [Inttegro::PurchaseIntent::ActivityVisitor, nil]
    class Activity < T::Struct
      const :amount, T.nilable(Inttegro::Money::Amount), default: nil
      const :attribution, T.nilable(Inttegro::PurchaseIntent::ActivityAttribution), default: nil
      const :created_at, Time
      const :error_code, T.nilable(String), default: nil
      const :id, String
      const :order_id, T.nilable(String), default: nil
      const :payment_id, T.nilable(String), default: nil
      const :product_id, T.nilable(String), default: nil
      const :purchase_intent_id, String
      const :quantity, T.nilable(Integer), default: nil
      const :source, T.nilable(String), default: nil
      const :type, Inttegro::PurchaseIntent::ActivityType
      const :variant_product_id, T.nilable(String), default: nil
      const :visitor, T.nilable(Inttegro::PurchaseIntent::ActivityVisitor), default: nil
    end
  end
end
