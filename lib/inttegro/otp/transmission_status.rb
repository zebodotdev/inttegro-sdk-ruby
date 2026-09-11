# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module OTP
    # String-backed values accepted by the Inttegro API for Inttegro::OTP::TransmissionStatus.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class TransmissionStatus < T::Enum
      enums do
        # Serialized wire value: `delivered`.
        # @return [Inttegro::OTP::TransmissionStatus]
        DELIVERED = new("delivered")
        # Serialized wire value: `failed`.
        # @return [Inttegro::OTP::TransmissionStatus]
        FAILED = new("failed")
        # Serialized wire value: `submitted`.
        # @return [Inttegro::OTP::TransmissionStatus]
        SUBMITTED = new("submitted")
      end
    end
  end
end
