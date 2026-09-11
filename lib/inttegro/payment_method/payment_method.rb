# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "bank_account"
require_relative "card"
require_relative "mobile_money"
require_relative "owner"
require_relative "supplied"
require_relative "type"
require_relative "verification"

module Inttegro
  # A tokenized payment instrument tied to a customer
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] active
  #   Whether this payment method is active and reusable in new payment flows
  #
  #   Required in the API payload. Wire name: `active`.
  #   @return [Boolean]
  #
  # @!attribute [r] archived_at
  #   Timestamp when the payment method was archived. Omitted while unarchived.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `archived_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] bank_account
  #   Bank account details (present when type is bank_account)
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `bank_account`.
  #   @return [Inttegro::PaymentMethod::BankAccount, nil]
  #
  # @!attribute [r] card
  #   Card marker. Nested card credentials are not returned.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `card`.
  #   @return [Inttegro::PaymentMethod::Card, nil]
  #
  # @!attribute [r] created_at
  #   When this payment method was tokenized
  #
  #   Required in the API payload. Wire name: `created_at`.
  #   @return [Time]
  #
  # @!attribute [r] custom_data
  #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
  #   collection rather than a raw map.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
  #   @return [Hash{String => String}, nil]
  #
  # @!attribute [r] customer_id
  #   Customer who owns this payment method
  #
  #   Required in the API payload. Wire name: `customer_id`.
  #   @return [String]
  #
  # @!attribute [r] ephemeral
  #   Whether the method is limited to its originating flow and cannot be reused.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `ephemeral`.
  #   @return [Boolean, nil]
  #
  # @!attribute [r] expires_on
  #   When this payment method expires. Omitted when no expiry is available.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_on`.
  #   @return [Time, nil]
  #
  # @!attribute [r] id
  #   Unique identifier for this payment method
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] mobile_money
  #   Masked mobile-money wallet details (present when type is mobile_money)
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `mobile_money`.
  #   @return [Inttegro::PaymentMethod::MobileMoney, nil]
  #
  # @!attribute [r] owner
  #   Owner identity captured during tokenization when provided
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `owner`.
  #   @return [Inttegro::PaymentMethod::Owner, nil]
  #
  # @!attribute [r] type
  #   Payment rail type
  #
  #   Required in the API payload. Wire name: `type`.
  #   @return [Inttegro::PaymentMethod::Type]
  #
  # @!attribute [r] supplied
  #   Public provenance for how the payment method was supplied.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `supplied`.
  #   @return [Inttegro::PaymentMethod::Supplied, nil]
  #
  # @!attribute [r] verification
  #   Most recent verification record when the payment method has entered a verification flow.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `verification`.
  #   @return [Inttegro::PaymentMethod::Verification, nil]
  #
  # @!attribute [r] verified_at
  #   When ownership verification was completed
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `verified_at`.
  #   @return [Time, nil]
  class PaymentMethod
    const :active, T::Boolean
    const :archived_at, T.nilable(Time), default: nil
    const :bank_account, T.nilable(Inttegro::PaymentMethod::BankAccount), default: nil
    const :card, T.nilable(Inttegro::PaymentMethod::Card), default: nil
    const :created_at, Time
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :customer_id, String
    const :ephemeral, T.nilable(T::Boolean), default: nil
    const :expires_on, T.nilable(Time), default: nil
    const :id, String
    const :mobile_money, T.nilable(Inttegro::PaymentMethod::MobileMoney), default: nil
    const :owner, T.nilable(Inttegro::PaymentMethod::Owner), default: nil
    const :type, Inttegro::PaymentMethod::Type
    const :supplied, T.nilable(Inttegro::PaymentMethod::Supplied), default: nil
    const :verification, T.nilable(Inttegro::PaymentMethod::Verification), default: nil
    const :verified_at, T.nilable(Time), default: nil
  end
end
