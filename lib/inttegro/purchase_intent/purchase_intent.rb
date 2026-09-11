# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "activity_log"
require_relative "merchant"
require_relative "price"
require_relative "product"
require_relative "quantity"
require_relative "status"
require_relative "usage"
require_relative "variant_set"

module Inttegro
  # Typed representation of the purchase intent object in the Inttegro API.
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] activity
  #   Recent authenticated-owner activity for the purchase intent.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `activity`.
  #   @return [Inttegro::PurchaseIntent::ActivityLog, nil]
  #
  # @!attribute [r] allow_variants
  #   Whether the intent was configured with a variant set
  #
  #   Required in the API payload. Wire name: `allow_variants`.
  #   @return [Boolean]
  #
  # @!attribute [r] created_at
  #   Creation timestamp
  #
  #   Required in the API payload. Wire name: `created_at`.
  #   @return [Time]
  #
  # @!attribute [r] expires_at
  #   Timestamp at or after which the Buy link is expired
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] id
  #   Unique purchase intent identifier with sale_ prefix. Append it to
  #   https://pages.inttegro.com/buy/ to build the hosted Buy link.
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] inactive_at
  #   When the Buy link was explicitly canceled
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `inactive_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] merchant
  #   Merchant identity captured for the hosted checkout. Individual fields are omitted when
  #   unavailable.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `merchant`.
  #   @return [Inttegro::PurchaseIntent::Merchant, nil]
  #
  # @!attribute [r] price
  #   Value of the `price` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `price`.
  #   @return [Inttegro::PurchaseIntent::Price, nil]
  #
  # @!attribute [r] product
  #   Value of the `product` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `product`.
  #   @return [Inttegro::PurchaseIntent::Product, nil]
  #
  # @!attribute [r] quantity
  #   Quantity bounds enforced by the hosted checkout. max is omitted when the offer has no upper
  #   bound.
  #
  #   Required in the API payload. Wire name: `quantity`.
  #   @return [Inttegro::PurchaseIntent::Quantity]
  #
  # @!attribute [r] status
  #   Effective lifecycle state derived from expiry, cancellation, and single-use order creation
  #
  #   Required in the API payload. Wire name: `status`.
  #   @return [Inttegro::PurchaseIntent::Status]
  #
  # @!attribute [r] updated_at
  #   Last mutation timestamp
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `updated_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] usage
  #   Exactly one of multi_use or single_use is returned as true. Order is present after a
  #   single-use intent is consumed.
  #
  #   Required in the API payload. Wire name: `usage`.
  #   @return [Inttegro::PurchaseIntent::Usage]
  #
  # @!attribute [r] variant_set
  #   Value of the `variant_set` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `variant_set`.
  #   @return [Inttegro::PurchaseIntent::VariantSet, nil]
  class PurchaseIntent
    const :activity, T.nilable(Inttegro::PurchaseIntent::ActivityLog), default: nil
    const :allow_variants, T::Boolean
    const :created_at, Time
    const :expires_at, T.nilable(Time), default: nil
    const :id, String
    const :inactive_at, T.nilable(Time), default: nil
    const :merchant, T.nilable(Inttegro::PurchaseIntent::Merchant), default: nil
    const :price, T.nilable(Inttegro::PurchaseIntent::Price), default: nil
    const :product, T.nilable(Inttegro::PurchaseIntent::Product), default: nil
    const :quantity, Inttegro::PurchaseIntent::Quantity
    const :status, Inttegro::PurchaseIntent::Status
    const :updated_at, T.nilable(Time), default: nil
    const :usage, Inttegro::PurchaseIntent::Usage
    const :variant_set, T.nilable(Inttegro::PurchaseIntent::VariantSet), default: nil
  end
end
