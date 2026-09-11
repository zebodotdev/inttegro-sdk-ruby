# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "payment_address"

module Inttegro
  module Checkout
    # Billing details for this new payment method. They do not replace the Order customer's
    # identity or the Order's shipping address.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Name of the payer associated with the new payment method.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] phone_number
    #   Phone number associated with the new payment method.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `phone_number`.
    #   @return [String, nil]
    #
    # @!attribute [r] address
    #   Value of the `address` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `address`.
    #   @return [Inttegro::Checkout::PaymentAddress]
    class PaymentMethodDataBillingDetails < T::Struct
      const :name, String
      const :phone_number, T.nilable(String), default: nil
      const :address, Inttegro::Checkout::PaymentAddress
    end
  end
end
