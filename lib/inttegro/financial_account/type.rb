# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Type of financial account
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Type < T::Enum
      enums do
        # Serialized wire value: `wallet`.
        # @return [Inttegro::FinancialAccount::Type]
        WALLET = new("wallet")
        # Serialized wire value: `bank_account`.
        # @return [Inttegro::FinancialAccount::Type]
        BANK_ACCOUNT = new("bank_account")
        # Serialized wire value: `dosh_account`.
        # @return [Inttegro::FinancialAccount::Type]
        DOSH_ACCOUNT = new("dosh_account")
      end
    end
  end
end
