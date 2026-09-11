# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "transaction"
require_relative "verification_attempt"

module Inttegro
  module OTP
    # Typed representation of the verification object in the Inttegro API.
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
    #
    # @!attribute [r] verification_attempt
    #   Details of a verification attempt
    #
    #   Required in the API payload. Wire name: `verification_attempt`.
    #   @return [Inttegro::OTP::VerificationAttempt]
    class Verification < T::Struct
      const :transaction, Inttegro::OTP::Transaction
      const :verification_attempt, Inttegro::OTP::VerificationAttempt
    end
  end
end
