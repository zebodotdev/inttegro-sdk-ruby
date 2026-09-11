# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "verification_verdict"

module Inttegro
  module OTP
    # Typed representation of the verification attempt result object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] detail
    #   Omitted when no detail is available.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `detail`.
    #   @return [String, nil]
    #
    # @!attribute [r] verdict
    #   Value of the `verdict` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `verdict`.
    #   @return [Inttegro::OTP::VerificationVerdict]
    class VerificationAttemptResult < T::Struct
      const :detail, T.nilable(String), default: nil
      const :verdict, Inttegro::OTP::VerificationVerdict
    end
  end
end
