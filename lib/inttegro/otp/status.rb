# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module OTP
    # String-backed values accepted by the Inttegro API for Inttegro::OTP::Status.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `canceled`.
        # @return [Inttegro::OTP::Status]
        CANCELED = new("canceled")
        # Serialized wire value: `expired`.
        # @return [Inttegro::OTP::Status]
        EXPIRED = new("expired")
        # Serialized wire value: `pending`.
        # @return [Inttegro::OTP::Status]
        PENDING = new("pending")
        # Serialized wire value: `pending_delivery`.
        # @return [Inttegro::OTP::Status]
        PENDING_DELIVERY = new("pending_delivery")
        # Serialized wire value: `pending_verification`.
        # @return [Inttegro::OTP::Status]
        PENDING_VERIFICATION = new("pending_verification")
        # Serialized wire value: `verified`.
        # @return [Inttegro::OTP::Status]
        VERIFIED = new("verified")
      end
    end
  end
end
