# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "address_input"

module Inttegro
  class Customer
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] billing_address
    #   Value of the `billing_address` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `billing_address`.
    #   @return [Inttegro::Customer::AddressInput, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined values accepted on resource creation. Values are serialized to strings
    #   before storage.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => Object}, nil]
    #
    # @!attribute [r] customer_id
    #   Value of the `customer_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `customer_id`.
    #   @return [String]
    #
    # @!attribute [r] email_address
    #   Value of the `email_address` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email_address`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
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
    #   @return [Inttegro::Customer::AddressInput, nil]
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
    class UpdateRequest < T::Struct
      const :billing_address, T.nilable(Inttegro::Customer::AddressInput), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :customer_id, String
      const :email_address, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :shipping_address, T.nilable(Inttegro::Customer::AddressInput), default: nil
      const :suffix, T.nilable(String), default: nil
      const :title, T.nilable(String), default: nil
    end
  end
end
