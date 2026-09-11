# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Payment rail type
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Type < T::Enum
      enums do
        # Serialized wire value: `mobile_money`.
        # @return [Inttegro::PaymentMethod::Type]
        MOBILE_MONEY = new("mobile_money")
        # Serialized wire value: `bank_account`.
        # @return [Inttegro::PaymentMethod::Type]
        BANK_ACCOUNT = new("bank_account")
        # Serialized wire value: `card`.
        # @return [Inttegro::PaymentMethod::Type]
        CARD = new("card")
        # Serialized wire value: `motito`.
        # @return [Inttegro::PaymentMethod::Type]
        MOTITO = new("motito")
      end
    end
  end
end
