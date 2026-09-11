# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "financial_account"

module Inttegro
  class FinancialAccount
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] accounts
    #   Value of the `accounts` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `accounts`.
    #   @return [Array<Inttegro::FinancialAccount>]
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] size
    #   Number of accounts returned
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    class Page < T::Struct
      const :accounts, T::Array[Inttegro::FinancialAccount]
      const :number, Integer
      const :size, Integer
    end
  end
end
