# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "country_bank_branch"

module Inttegro
  module Shared
    # A banking institution available in a country
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Stable bank identifier
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] name
    #   Bank display name
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] swift_code
    #   SWIFT/BIC code for the bank, when available
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `swift_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] sort_code_prefix
    #   Ghana sort code prefix for the bank
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sort_code_prefix`.
    #   @return [String, nil]
    #
    # @!attribute [r] branches
    #   Branches available for this bank
    #
    #   Required in the API payload. Wire name: `branches`.
    #   @return [Array<Inttegro::Shared::CountryBankBranch>]
    class CountryBank < T::Struct
      const :id, String
      const :name, String
      const :swift_code, T.nilable(String), default: nil
      const :sort_code_prefix, T.nilable(String), default: nil
      const :branches, T::Array[Inttegro::Shared::CountryBankBranch]
    end
  end
end
