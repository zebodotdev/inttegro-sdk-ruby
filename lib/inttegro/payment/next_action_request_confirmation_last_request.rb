# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "confirmation_channel"

module Inttegro
  class Payment
    # Typed representation of the next action request confirmation last request object in the
    # Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] recipient
    #   Value of the `recipient` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `recipient`.
    #   @return [String]
    #
    # @!attribute [r] sent_via
    #   Value of the `sent_via` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `sent_via`.
    #   @return [Inttegro::Payment::ConfirmationChannel]
    #
    # @!attribute [r] token_size
    #   Value of the `token_size` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `token_size`.
    #   @return [Integer]
    #
    # @!attribute [r] sender_id
    #   Value of the `sender_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `sender_id`.
    #   @return [String]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [String, nil]
    class NextActionRequestConfirmationLastRequest < T::Struct
      const :id, String
      const :recipient, String
      const :sent_via, Inttegro::Payment::ConfirmationChannel
      const :token_size, Integer
      const :sender_id, String
      const :status, T.nilable(String), default: nil
    end
  end
end
