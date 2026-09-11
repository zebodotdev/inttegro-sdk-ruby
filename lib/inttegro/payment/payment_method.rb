# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../payment_method/card"
require_relative "../payment_method/type"
require_relative "method_snapshot_bank_account"
require_relative "method_snapshot_mobile_money"
require_relative "method_snapshot_owner"

module Inttegro
  class Payment
    # Typed representation of the payment method object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] bank_account
    #   Value of the `bank_account` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `bank_account`.
    #   @return [Inttegro::Payment::MethodSnapshotBankAccount, nil]
    #
    # @!attribute [r] card
    #   Card marker. Nested card credentials are not returned.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `card`.
    #   @return [Inttegro::PaymentMethod::Card, nil]
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] customer_id
    #   Value of the `customer_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `customer_id`.
    #   @return [String]
    #
    # @!attribute [r] mobile_money
    #   Value of the `mobile_money` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `mobile_money`.
    #   @return [Inttegro::Payment::MethodSnapshotMobileMoney, nil]
    #
    # @!attribute [r] owner
    #   Value of the `owner` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `owner`.
    #   @return [Inttegro::Payment::MethodSnapshotOwner, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::PaymentMethod::Type]
    #
    # @!attribute [r] verified
    #   Value of the `verified` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `verified`.
    #   @return [Boolean]
    #
    # @!attribute [r] verified_at
    #   Value of the `verified_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `verified_at`.
    #   @return [Time, nil]
    class PaymentMethod < T::Struct
      const :id, String
      const :bank_account, T.nilable(Inttegro::Payment::MethodSnapshotBankAccount), default: nil
      const :card, T.nilable(Inttegro::PaymentMethod::Card), default: nil
      const :created_at, Time
      const :customer_id, String
      const :mobile_money, T.nilable(Inttegro::Payment::MethodSnapshotMobileMoney), default: nil
      const :owner, T.nilable(Inttegro::Payment::MethodSnapshotOwner), default: nil
      const :type, Inttegro::PaymentMethod::Type
      const :verified, T::Boolean
      const :verified_at, T.nilable(Time), default: nil
    end
  end
end
