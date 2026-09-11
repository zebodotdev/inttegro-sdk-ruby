# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "amount"
require_relative "payout_configuration"
require_relative "type"

module Inttegro
  # Merchant balance entry caused by a payment or refund. `type` describes the semantic source,
  # not direction. A payment transaction contains `payment_id`; a refund transaction contains
  # `refund_id`. Exactly one matching reference is present.
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
  #   Required in the API payload. Wire name: `amount`.
  #   @return [Inttegro::BalanceTransaction::Amount]
  #
  # @!attribute [r] available_at
  #   Value of the `available_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `available_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] claimed_at
  #   Value of the `claimed_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `claimed_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] created_at
  #   Value of the `created_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `created_at`.
  #   @return [Time]
  #
  # @!attribute [r] id
  #   Value of the `id` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] order_id
  #   Value of the `order_id` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `order_id`.
  #   @return [String]
  #
  # @!attribute [r] paid_at
  #   Value of the `paid_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `paid_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] payment_id
  #   Present when `type` is `payment`; omitted when `type` is `refund`.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_id`.
  #   @return [String, nil]
  #
  # @!attribute [r] payout_id
  #   Value of the `payout_id` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `payout_id`.
  #   @return [String, nil]
  #
  # @!attribute [r] payout_configuration
  #   Value of the `payout_configuration` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `payout_configuration`.
  #   @return [Inttegro::BalanceTransaction::PayoutConfiguration, nil]
  #
  # @!attribute [r] refund_id
  #   Present when `type` is `refund`; omitted when `type` is `payment`.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `refund_id`.
  #   @return [String, nil]
  #
  # @!attribute [r] type
  #   Semantic source or cause of the transaction, not its direction.
  #
  #   Required in the API payload. Wire name: `type`.
  #   @return [Inttegro::BalanceTransaction::Type]
  class BalanceTransaction
    const :amount, Inttegro::BalanceTransaction::Amount
    const :available_at, T.nilable(Time), default: nil
    const :claimed_at, T.nilable(Time), default: nil
    const :created_at, Time
    const :id, String
    const :order_id, String
    const :paid_at, T.nilable(Time), default: nil
    const :payment_id, T.nilable(String), default: nil
    const :payout_id, T.nilable(String), default: nil
    const :payout_configuration, T.nilable(Inttegro::BalanceTransaction::PayoutConfiguration), default: nil
    const :refund_id, T.nilable(String), default: nil
    const :type, Inttegro::BalanceTransaction::Type
  end
end
