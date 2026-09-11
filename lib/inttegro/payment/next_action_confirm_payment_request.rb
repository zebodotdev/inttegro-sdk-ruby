# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "confirmation_channel"

module Inttegro
  class Payment
    # Confirmation request details
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Unique identifier for the confirmation request
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] recipient
    #   Recipient of the confirmation token
    #
    #   Required in the API payload. Wire name: `recipient`.
    #   @return [String]
    #
    # @!attribute [r] sent_via
    #   Channel used to send the token
    #
    #   Required in the API payload. Wire name: `sent_via`.
    #   @return [Inttegro::Payment::ConfirmationChannel]
    #
    # @!attribute [r] token_size
    #   Number of digits in the token
    #
    #   Required in the API payload. Wire name: `token_size`.
    #   @return [Integer]
    #
    # @!attribute [r] sender_id
    #   Sender ID for the message
    #
    #   Required in the API payload. Wire name: `sender_id`.
    #   @return [String]
    #
    # @!attribute [r] status
    #   Current request status
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [String, nil]
    class NextActionConfirmPaymentRequest < T::Struct
      const :id, String
      const :recipient, String
      const :sent_via, Inttegro::Payment::ConfirmationChannel
      const :token_size, Integer
      const :sender_id, String
      const :status, T.nilable(String), default: nil
    end
  end
end
