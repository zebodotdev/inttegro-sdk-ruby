# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "address"

module Inttegro
  class Order
    # Typed representation of the customer object in the Inttegro API.
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
    # @!attribute [r] guest
    #   Value of the `guest` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `guest`.
    #   @return [Boolean]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] email_address
    #   Value of the `email_address` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email_address`.
    #   @return [String, nil]
    #
    # @!attribute [r] phone_number
    #   Value of the `phone_number` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `phone_number`.
    #   @return [String, nil]
    #
    # @!attribute [r] billing_address
    #   Value of the `billing_address` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `billing_address`.
    #   @return [Inttegro::Order::Address, nil]
    #
    # @!attribute [r] shipping_address
    #   Value of the `shipping_address` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `shipping_address`.
    #   @return [Inttegro::Order::Address, nil]
    class Customer < T::Struct
      const :id, String
      const :guest, T::Boolean
      const :name, String
      const :email_address, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :billing_address, T.nilable(Inttegro::Order::Address), default: nil
      const :shipping_address, T.nilable(Inttegro::Order::Address), default: nil
    end
  end
end
