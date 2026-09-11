# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../financial_account/created_owner"

module Inttegro
  module BankAccount
    # Typed representation of the created object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] branch
    #   Value of the `branch` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `branch`.
    #   @return [String, nil]
    #
    # @!attribute [r] holder
    #   Value of the `holder` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `holder`.
    #   @return [Inttegro::FinancialAccount::CreatedOwner]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [String]
    #
    # @!attribute [r] sort_code
    #   Value of the `sort_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sort_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] swift_code
    #   Value of the `swift_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `swift_code`.
    #   @return [String, nil]
    class Created < T::Struct
      const :branch, T.nilable(String), default: nil
      const :holder, Inttegro::FinancialAccount::CreatedOwner
      const :name, String
      const :number, String
      const :sort_code, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end
  end
end
