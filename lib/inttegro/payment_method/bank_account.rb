# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../bank_account/type"
require_relative "bank_account_ghana_bank_account"

module Inttegro
  class PaymentMethod
    # Bank account details (present when type is bank_account)
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] ghana_bank_account
    #   Ghana bank account details
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `ghana_bank_account`.
    #   @return [Inttegro::PaymentMethod::BankAccountGhanaBankAccount, nil]
    #
    # @!attribute [r] type
    #   Bank account sub-type
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::BankAccount::Type]
    class BankAccount < T::Struct
      const :ghana_bank_account, T.nilable(Inttegro::PaymentMethod::BankAccountGhanaBankAccount), default: nil
      const :type, Inttegro::BankAccount::Type
    end
  end
end
