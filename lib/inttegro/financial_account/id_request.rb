# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Typed representation of the id request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] account_id
    #   Value of the `account_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `account_id`.
    #   @return [String]
    class IDRequest < T::Struct
      const :account_id, String
    end
  end
end
