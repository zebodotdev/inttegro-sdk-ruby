# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "country_bank"

module Inttegro
  module Shared
    # Bank reference data available for country-specific bank accounts
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] bank_account_type
    #   Country-specific bank account subtype used by financial account APIs
    #
    #   Required in the API payload. Wire name: `bank_account_type`.
    #   @return [String]
    #
    # @!attribute [r] code_scheme
    #   Identifier scheme used for bank branch codes
    #
    #   Required in the API payload. Wire name: `code_scheme`.
    #   @return [String]
    #
    # @!attribute [r] items
    #   Banking institutions available in this country
    #
    #   Required in the API payload. Wire name: `items`.
    #   @return [Array<Inttegro::Shared::CountryBank>]
    class CountryBankDirectory < T::Struct
      const :bank_account_type, String
      const :code_scheme, String
      const :items, T::Array[Inttegro::Shared::CountryBank]
    end
  end
end
