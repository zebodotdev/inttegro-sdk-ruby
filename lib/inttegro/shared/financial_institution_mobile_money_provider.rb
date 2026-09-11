# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Typed representation of the financial institution mobile money provider object in the
    # Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] provider
    #   Value of the `provider` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `provider`.
    #   @return [String]
    class FinancialInstitutionMobileMoneyProvider < T::Struct
      const :provider, String
    end
  end
end
