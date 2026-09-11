# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/mobile_money_network"

module Inttegro
  class PaymentMethod
    # Typed representation of the tokenize mobile money request mobile money object in the
    # Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] account_number
    #   Mobile-money number in a valid local or international phone-number format.
    #
    #   Required in the API payload. Wire name: `account_number`.
    #   @return [String]
    #
    # @!attribute [r] network
    #   Value of the `network` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `network`.
    #   @return [Inttegro::Shared::MobileMoneyNetwork]
    class TokenizeMobileMoneyRequestMobileMoney < T::Struct
      const :account_number, String
      const :network, Inttegro::Shared::MobileMoneyNetwork
    end
  end
end
