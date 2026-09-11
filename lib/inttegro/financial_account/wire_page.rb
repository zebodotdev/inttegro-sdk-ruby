# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "wire_page_accounts_item"

module Inttegro
  class FinancialAccount
    # Typed representation of the wire page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Current page number
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] size
    #   Number of accounts in this page
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] accounts
    #   Array of financial account objects
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `accounts`.
    #   @return [Array<Inttegro::FinancialAccount::WirePageAccountsItem>, nil]
    class WirePage < T::Struct
      const :number, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
      const :accounts, T.nilable(T::Array[Inttegro::FinancialAccount::WirePageAccountsItem]), default: nil
    end
  end
end
