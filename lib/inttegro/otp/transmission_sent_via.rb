# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module OTP
    # String-backed values accepted by the Inttegro API for Inttegro::OTP::TransmissionSentVia.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class TransmissionSentVia < T::Enum
      enums do
        # Serialized wire value: `sms`.
        # @return [Inttegro::OTP::TransmissionSentVia]
        SMS = new("sms")
      end
    end
  end
end
