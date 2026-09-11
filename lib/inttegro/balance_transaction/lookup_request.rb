# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class BalanceTransaction
    # Typed representation of the lookup request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] transaction_id
    #   Unique identifier of the balance transaction
    #
    #   Required in the API payload. Wire name: `transaction_id`.
    #   @return [String]
    class LookupRequest < T::Struct
      const :transaction_id, String
    end
  end
end
