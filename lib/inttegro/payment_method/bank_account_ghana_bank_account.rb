# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Ghana bank account details
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] branch
    #   Branch name
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `branch`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Account holder name
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] account_number
    #   Account number
    #
    #   Required in the API payload. Wire name: `account_number`.
    #   @return [String]
    #
    # @!attribute [r] sort_code
    #   Bank sort code
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sort_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] swift_code
    #   SWIFT/BIC code
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `swift_code`.
    #   @return [String, nil]
    class BankAccountGhanaBankAccount < T::Struct
      const :branch, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :account_number, String
      const :sort_code, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end
  end
end
