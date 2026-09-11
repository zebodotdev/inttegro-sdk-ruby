# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "address"

module Inttegro
  module Shared
    # Typed representation of the billing details object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Billing contact name
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] email_address
    #   Billing email address
    #
    #   Required in the API payload. Wire name: `email_address`.
    #   @return [String]
    #
    # @!attribute [r] phone_number
    #   Billing phone number
    #
    #   Required in the API payload. Wire name: `phone_number`.
    #   @return [String]
    #
    # @!attribute [r] address
    #   Value of the `address` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `address`.
    #   @return [Inttegro::Shared::Address, nil]
    class BillingDetails < T::Struct
      const :name, String
      const :email_address, String
      const :phone_number, String
      const :address, T.nilable(Inttegro::Shared::Address), default: nil
    end
  end
end
