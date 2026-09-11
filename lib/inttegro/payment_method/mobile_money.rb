# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/mobile_money_network"

module Inttegro
  class PaymentMethod
    # Masked mobile-money wallet details (present when type is mobile_money)
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] account_number
    #   Masked wallet number. The full account number is never returned.
    #
    #   Required in the API payload. Wire name: `account_number`.
    #   @return [String]
    #
    # @!attribute [r] last4
    #   Last four numeric digits of the normalized wallet number.
    #
    #   Required in the API payload. Wire name: `last4`.
    #   @return [String]
    #
    # @!attribute [r] network
    #   Mobile network operator
    #
    #   Required in the API payload. Wire name: `network`.
    #   @return [Inttegro::Shared::MobileMoneyNetwork]
    class MobileMoney < T::Struct
      const :account_number, String
      const :last4, String
      const :network, Inttegro::Shared::MobileMoneyNetwork
    end
  end
end
