# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "transaction"

module Inttegro
  module OTP
    # Typed representation of the lookup response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] transaction
    #   OTP transaction object returned by initiate, verify, and lookup endpoints
    #
    #   Required in the API payload. Wire name: `transaction`.
    #   @return [Inttegro::OTP::Transaction]
    class LookupResponse < T::Struct
      const :transaction, Inttegro::OTP::Transaction
    end
  end
end
