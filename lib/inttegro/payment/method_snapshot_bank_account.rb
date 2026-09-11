# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "method_snapshot_bank_account_ghana_bank_account"

module Inttegro
  class Payment
    # Typed representation of the method snapshot bank account object in the Inttegro API.
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
    #   @return [String]
    #
    # @!attribute [r] ghana_bank_account
    #   Value of the `ghana_bank_account` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `ghana_bank_account`.
    #   @return [Inttegro::Payment::MethodSnapshotBankAccountGhanaBankAccount, nil]
    class MethodSnapshotBankAccount < T::Struct
      const :type, String
      const :ghana_bank_account, T.nilable(Inttegro::Payment::MethodSnapshotBankAccountGhanaBankAccount), default: nil
    end
  end
end
