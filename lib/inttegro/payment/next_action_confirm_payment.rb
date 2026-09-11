# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "next_action_confirm_payment_attempt"
require_relative "next_action_confirm_payment_request"

module Inttegro
  class Payment
    # Details for customer payment confirmation
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] expires_at
    #   When the confirmation request expires
    #
    #   Required in the API payload. Wire name: `expires_at`.
    #   @return [Time]
    #
    # @!attribute [r] scheme
    #   Authentication scheme used
    #
    #   Required in the API payload. Wire name: `scheme`.
    #   @return [String]
    #
    # @!attribute [r] request
    #   Confirmation request details
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `request`.
    #   @return [Inttegro::Payment::NextActionConfirmPaymentRequest, nil]
    #
    # @!attribute [r] attempt
    #   Latest confirmation attempt
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attempt`.
    #   @return [Inttegro::Payment::NextActionConfirmPaymentAttempt, nil]
    #
    # @!attribute [r] confirmed
    #   Whether the payment confirmation has completed
    #
    #   Required in the API payload. Wire name: `confirmed`.
    #   @return [Boolean]
    #
    # @!attribute [r] status
    #   Confirmation status
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [String]
    class NextActionConfirmPayment < T::Struct
      const :expires_at, Time
      const :scheme, String
      const :request, T.nilable(Inttegro::Payment::NextActionConfirmPaymentRequest), default: nil
      const :attempt, T.nilable(Inttegro::Payment::NextActionConfirmPaymentAttempt), default: nil
      const :confirmed, T::Boolean
      const :status, String
    end
  end
end
