# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"
require_relative "error"
require_relative "status"

module Inttegro
  # A payout scheduled from your Inttegro balance to a destination financial account
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
  # @!attribute [r] balance_transactions
  #   Balance transaction IDs linked to this payout
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `balance_transactions`.
  #   @return [Array<String>, nil]
  #
  # @!attribute [r] canceled_at
  #   When the payout was canceled
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `canceled_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] custom_data
  #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
  #   collection rather than a raw map.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
  #   @return [Hash{String => String}, nil]
  #
  # @!attribute [r] destination_id
  #   Financial account receiving the funds
  #
  #   Required in the API payload. Wire name: `destination_id`.
  #   @return [String]
  #
  # @!attribute [r] error
  #   Public failure details when execution fails
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `error`.
  #   @return [Inttegro::Payout::Error, nil]
  #
  # @!attribute [r] execute_after
  #   Earliest moment payout execution may begin
  #
  #   Required in the API payload. Wire name: `execute_after`.
  #   @return [Time]
  #
  # @!attribute [r] executed_by
  #   Actor that executed the payout
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `executed_by`.
  #   @return [String, nil]
  #
  # @!attribute [r] expected_at
  #   Expected completion time
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `expected_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] failed_at
  #   When the payout entered its unsuccessful terminal state
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `failed_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] id
  #   Unique payout identifier
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] initiated_at
  #   When the payout was created
  #
  #   Required in the API payload. Wire name: `initiated_at`.
  #   @return [Time]
  #
  # @!attribute [r] initiated_by
  #   Actor that initiated the payout
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `initiated_by`.
  #   @return [String, nil]
  #
  # @!attribute [r] max_amount
  #   Value of the `max_amount` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `max_amount`.
  #   @return [Inttegro::Money::Amount]
  #
  # @!attribute [r] reference
  #   Merchant reference carried on the payout
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
  #   @return [String, nil]
  #
  # @!attribute [r] schedule_id
  #   Schedule associated with the payout
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `schedule_id`.
  #   @return [String, nil]
  #
  # @!attribute [r] scheduled_at
  #   When the payout was scheduled
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `scheduled_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] scheduled_by
  #   Actor that scheduled the payout
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `scheduled_by`.
  #   @return [String, nil]
  #
  # @!attribute [r] sent_at
  #   When the transfer was sent
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `sent_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] source_id
  #   Source identifier associated with the payout
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `source_id`.
  #   @return [String, nil]
  #
  # @!attribute [r] status
  #   Current payout lifecycle state
  #
  #   Required in the API payload. Wire name: `status`.
  #   @return [Inttegro::Payout::Status]
  #
  # @!attribute [r] succeeded_at
  #   When the payout succeeded
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `succeeded_at`.
  #   @return [Time, nil]
  class Payout
    const :amount, T.nilable(Inttegro::Money::Amount), default: nil
    const :balance_transactions, T.nilable(T::Array[String]), default: nil
    const :canceled_at, T.nilable(Time), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :destination_id, String
    const :error, T.nilable(Inttegro::Payout::Error), default: nil
    const :execute_after, Time
    const :executed_by, T.nilable(String), default: nil
    const :expected_at, T.nilable(Time), default: nil
    const :failed_at, T.nilable(Time), default: nil
    const :id, String
    const :initiated_at, Time
    const :initiated_by, T.nilable(String), default: nil
    const :max_amount, Inttegro::Money::Amount
    const :reference, T.nilable(String), default: nil
    const :schedule_id, T.nilable(String), default: nil
    const :scheduled_at, T.nilable(Time), default: nil
    const :scheduled_by, T.nilable(String), default: nil
    const :sent_at, T.nilable(Time), default: nil
    const :source_id, T.nilable(String), default: nil
    const :status, Inttegro::Payout::Status
    const :succeeded_at, T.nilable(Time), default: nil
  end
end
