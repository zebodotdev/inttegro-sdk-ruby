# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module OTP
    # String-backed values accepted by the Inttegro API for Inttegro::OTP::VerificationVerdict.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class VerificationVerdict < T::Enum
      enums do
        # Serialized wire value: `fail`.
        # @return [Inttegro::OTP::VerificationVerdict]
        FAIL = new("fail")
        # Serialized wire value: `pass`.
        # @return [Inttegro::OTP::VerificationVerdict]
        PASS = new("pass")
      end
    end
  end
end
