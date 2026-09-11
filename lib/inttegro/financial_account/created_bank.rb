# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../bank_account/created"
require_relative "../bank_account/type"

module Inttegro
  class FinancialAccount
    # Typed representation of the created bank object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Empty in the current create response.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
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
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `ghana_bank_account`.
    #   @return [Inttegro::BankAccount::Created, nil]
    class CreatedBank < T::Struct
      const :id, String
      const :type, Inttegro::BankAccount::Type
      const :ghana_bank_account, T.nilable(Inttegro::BankAccount::Created), default: nil
    end
  end
end
