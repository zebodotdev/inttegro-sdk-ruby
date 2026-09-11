# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "address"
require_relative "balance_value"

module Inttegro
  # Typed representation of the customer object in the Inttegro API.
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] balance
  #   Available customer balances keyed by lowercase currency code.
  #
  #   Required in the API payload. Wire name: `balance`.
  #   @return [Hash{String => Inttegro::Customer::BalanceValue}]
  #
  # @!attribute [r] billing_address
  #   Value of the `billing_address` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `billing_address`.
  #   @return [Inttegro::Customer::Address, nil]
  #
  # @!attribute [r] created_at
  #   Value of the `created_at` field in the Inttegro API payload.
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
  # @!attribute [r] email_address
  #   Value of the `email_address` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `email_address`.
  #   @return [String, nil]
  #
  # @!attribute [r] guest
  #   Value of the `guest` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `guest`.
  #   @return [Boolean]
  #
  # @!attribute [r] id
  #   Value of the `id` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] name
  #   Value of the `name` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `name`.
  #   @return [String]
  #
  # @!attribute [r] phone_number
  #   Value of the `phone_number` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `phone_number`.
  #   @return [String, nil]
  #
  # @!attribute [r] reference
  #   Value of the `reference` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
  #   @return [String, nil]
  #
  # @!attribute [r] shipping_address
  #   Value of the `shipping_address` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `shipping_address`.
  #   @return [Inttegro::Customer::Address, nil]
  #
  # @!attribute [r] suffix
  #   Value of the `suffix` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `suffix`.
  #   @return [String, nil]
  #
  # @!attribute [r] title
  #   Value of the `title` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `title`.
  #   @return [String, nil]
  #
  # @!attribute [r] updated_at
  #   Value of the `updated_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `updated_at`.
  #   @return [Time, nil]
  class Customer
    const :balance, T::Hash[String, Inttegro::Customer::BalanceValue]
    const :billing_address, T.nilable(Inttegro::Customer::Address), default: nil
    const :created_at, Time
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :email_address, T.nilable(String), default: nil
    const :guest, T::Boolean
    const :id, String
    const :name, String
    const :phone_number, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :shipping_address, T.nilable(Inttegro::Customer::Address), default: nil
    const :suffix, T.nilable(String), default: nil
    const :title, T.nilable(String), default: nil
    const :updated_at, T.nilable(Time), default: nil
  end
end
