# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "verification_attempt_result"

module Inttegro
  module OTP
    # Details of a verification attempt
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] attempted_at
    #   Value of the `attempted_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `attempted_at`.
    #   @return [Time]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] presented_token
    #   Token submitted for this verification attempt.
    #
    #   Required in the API payload. Wire name: `presented_token`.
    #   @return [String]
    #
    # @!attribute [r] recipient
    #   Value of the `recipient` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `recipient`.
    #   @return [String]
    #
    # @!attribute [r] result
    #   Value of the `result` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `result`.
    #   @return [Inttegro::OTP::VerificationAttemptResult]
    class VerificationAttempt < T::Struct
      const :attempted_at, Time
      const :id, String
      const :presented_token, String
      const :recipient, String
      const :result, Inttegro::OTP::VerificationAttemptResult
    end
  end
end
