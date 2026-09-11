# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "status"
require_relative "transmission"

module Inttegro
  module OTP
    # OTP transaction object returned by initiate, verify, and lookup endpoints
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] cancel_reason
    #   Omitted unless the transaction was canceled.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `cancel_reason`.
    #   @return [String, nil]
    #
    # @!attribute [r] canceled_at
    #   Omitted unless the transaction was canceled.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `canceled_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] expires_at
    #   Value of the `expires_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `expires_at`.
    #   @return [Time]
    #
    # @!attribute [r] full_message
    #   Message text with the `{token}` placeholder preserved; no generated token is returned.
    #
    #   Required in the API payload. Wire name: `full_message`.
    #   @return [String]
    #
    # @!attribute [r] id
    #   Unique identifier with ot_ prefix
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] initiated_at
    #   Value of the `initiated_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `initiated_at`.
    #   @return [Time]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [Inttegro::OTP::Status]
    #
    # @!attribute [r] transmission
    #   Value of the `transmission` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `transmission`.
    #   @return [Inttegro::OTP::Transmission, nil]
    class Transaction < T::Struct
      const :cancel_reason, T.nilable(String), default: nil
      const :canceled_at, T.nilable(Time), default: nil
      const :expires_at, Time
      const :full_message, String
      const :id, String
      const :initiated_at, Time
      const :status, Inttegro::OTP::Status
      const :transmission, T.nilable(Inttegro::OTP::Transmission), default: nil
    end
  end
end
