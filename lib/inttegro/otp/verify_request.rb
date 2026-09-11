# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module OTP
    # Typed representation of the verify request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] transaction_id
    #   ID of the OTP transaction to verify (with ot_ prefix)
    #
    #   Required in the API payload. Wire name: `transaction_id`.
    #   @return [String]
    #
    # @!attribute [r] recipient
    #   Phone number that received the OTP
    #
    #   Required in the API payload. Wire name: `recipient`.
    #   @return [String]
    #
    # @!attribute [r] token
    #   OTP token submitted by the user
    #
    #   Required in the API payload. Wire name: `token`.
    #   @return [String]
    class VerifyRequest < T::Struct
      const :transaction_id, String
      const :recipient, String
      const :token, String
    end
  end
end
