# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "transmission_sent_via"
require_relative "transmission_status"

module Inttegro
  module OTP
    # Typed representation of the transmission object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] recipient
    #   Value of the `recipient` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `recipient`.
    #   @return [String]
    #
    # @!attribute [r] sender_id
    #   Value of the `sender_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `sender_id`.
    #   @return [String]
    #
    # @!attribute [r] sent_at
    #   Value of the `sent_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sent_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] sent_via
    #   Value of the `sent_via` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sent_via`.
    #   @return [Inttegro::OTP::TransmissionSentVia, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [Inttegro::OTP::TransmissionStatus, nil]
    class Transmission < T::Struct
      const :recipient, String
      const :sender_id, String
      const :sent_at, T.nilable(Time), default: nil
      const :sent_via, T.nilable(Inttegro::OTP::TransmissionSentVia), default: nil
      const :status, T.nilable(Inttegro::OTP::TransmissionStatus), default: nil
    end
  end
end
