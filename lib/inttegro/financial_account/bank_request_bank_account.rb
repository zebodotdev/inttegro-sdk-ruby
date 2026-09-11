# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../bank_account/type"
require_relative "bank_request_bank_account_ghana_bank_account"

module Inttegro
  class FinancialAccount
    # Typed representation of the bank request bank account object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::BankAccount::Type]
    #
    # @!attribute [r] ghana_bank_account
    #   Value of the `ghana_bank_account` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `ghana_bank_account`.
    #   @return [Inttegro::FinancialAccount::BankRequestBankAccountGhanaBankAccount]
    class BankRequestBankAccount < T::Struct
      const :type, Inttegro::BankAccount::Type
      const :ghana_bank_account, Inttegro::FinancialAccount::BankRequestBankAccountGhanaBankAccount
    end
  end
end
