# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # A bank branch in a country bank directory
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Stable branch identifier
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] name
    #   Branch display name
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] sort_code
    #   Ghana bank branch sort code
    #
    #   Required in the API payload. Wire name: `sort_code`.
    #   @return [String]
    class CountryBankBranch < T::Struct
      const :id, String
      const :name, String
      const :sort_code, String
    end
  end
end
