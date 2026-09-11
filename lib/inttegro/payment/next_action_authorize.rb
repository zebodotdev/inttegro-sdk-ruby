# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Details for authorization action
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] beneficiary
    #   Beneficiary requiring authorization
    #
    #   Required in the API payload. Wire name: `beneficiary`.
    #   @return [String]
    #
    # @!attribute [r] scheme
    #   Authorization scheme
    #
    #   Required in the API payload. Wire name: `scheme`.
    #   @return [String]
    #
    # @!attribute [r] expires_at
    #   When the authorization request expires
    #
    #   Required in the API payload. Wire name: `expires_at`.
    #   @return [Time]
    class NextActionAuthorize < T::Struct
      const :beneficiary, String
      const :scheme, String
      const :expires_at, Time
    end
  end
end
