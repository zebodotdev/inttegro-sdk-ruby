# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../balance_transaction/balance_transaction"
require_relative "../money/amount"
require_relative "billing_details"
require_relative "customer"
require_relative "latest_attempt"
require_relative "latest_error"
require_relative "next_action"
require_relative "payment_method"
require_relative "payout_configuration"
require_relative "status"

module Inttegro
  # Payment intent tied to this order
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] id
  #   Payment intent ID
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] status
  #   Payment state
  #
  #   Required in the API payload. Wire name: `status`.
  #   @return [Inttegro::Payment::Status]
  #
  # @!attribute [r] statement_descriptor
  #   Optional statement descriptor shown on the customer's bank statement
  #
  #   Required in the API payload. Wire name: `statement_descriptor`.
  #   @return [String]
  #
  # @!attribute [r] amount
  #   Value of the `amount` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `amount`.
  #   @return [Inttegro::Money::Amount]
  #
  # @!attribute [r] balance_transaction
  #   Merchant balance entry caused by a payment or refund. `type` describes the semantic source,
  #   not direction. A payment transaction contains `payment_id`; a refund transaction contains
  #   `refund_id`. Exactly one matching reference is present.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `balance_transaction`.
  #   @return [Inttegro::BalanceTransaction, nil]
  #
  # @!attribute [r] payment_method
  #   Value of the `payment_method` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method`.
  #   @return [Inttegro::Payment::PaymentMethod, nil]
  #
  # @!attribute [r] billing_details
  #   Value of the `billing_details` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `billing_details`.
  #   @return [Inttegro::Payment::BillingDetails, nil]
  #
  # @!attribute [r] customer
  #   Value of the `customer` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `customer`.
  #   @return [Inttegro::Payment::Customer, nil]
  #
  # @!attribute [r] latest_attempt
  #   Most recent payment attempt details
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `latest_attempt`.
  #   @return [Inttegro::Payment::LatestAttempt, nil]
  #
  # @!attribute [r] next_action
  #   Next action required to complete a payment
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `next_action`.
  #   @return [Inttegro::Payment::NextAction, nil]
  #
  # @!attribute [r] latest_error
  #   Value of the `latest_error` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `latest_error`.
  #   @return [Inttegro::Payment::LatestError, nil]
  #
  # @!attribute [r] initiated_at
  #   When we kicked off the payment intent
  #
  #   Required in the API payload. Wire name: `initiated_at`.
  #   @return [Time]
  #
  # @!attribute [r] executed_at
  #   When payment execution started
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `executed_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] paid_at
  #   When payment completed successfully
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `paid_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] canceled_at
  #   When payment was canceled
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `canceled_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] due_at
  #   When payment becomes overdue
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `due_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] expired_at
  #   When payment expired
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `expired_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] failed_at
  #   When payment failed
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `failed_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] paid_offline
  #   Whether payment was recorded as received outside Inttegro
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `paid_offline`.
  #   @return [Boolean, nil]
  #
  # @!attribute [r] payment_method_types
  #   Value of the `payment_method_types` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method_types`.
  #   @return [Array<String>, nil]
  #
  # @!attribute [r] payout_configuration
  #   Payout configuration for this payment
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `payout_configuration`.
  #   @return [Inttegro::Payment::PayoutConfiguration, nil]
  class Payment
    const :id, String
    const :status, Inttegro::Payment::Status
    const :statement_descriptor, String
    const :amount, Inttegro::Money::Amount
    const :balance_transaction, T.nilable(Inttegro::BalanceTransaction), default: nil
    const :payment_method, T.nilable(Inttegro::Payment::PaymentMethod), default: nil
    const :billing_details, T.nilable(Inttegro::Payment::BillingDetails), default: nil
    const :customer, T.nilable(Inttegro::Payment::Customer), default: nil
    const :latest_attempt, T.nilable(Inttegro::Payment::LatestAttempt), default: nil
    const :next_action, T.nilable(Inttegro::Payment::NextAction), default: nil
    const :latest_error, T.nilable(Inttegro::Payment::LatestError), default: nil
    const :initiated_at, Time
    const :executed_at, T.nilable(Time), default: nil
    const :paid_at, T.nilable(Time), default: nil
    const :canceled_at, T.nilable(Time), default: nil
    const :due_at, T.nilable(Time), default: nil
    const :expired_at, T.nilable(Time), default: nil
    const :failed_at, T.nilable(Time), default: nil
    const :paid_offline, T.nilable(T::Boolean), default: nil
    const :payment_method_types, T.nilable(T::Array[String]), default: nil
    const :payout_configuration, T.nilable(Inttegro::Payment::PayoutConfiguration), default: nil
  end
end
