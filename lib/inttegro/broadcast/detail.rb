# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../chime/email_message"
require_relative "error"

module Inttegro
  module Broadcast
    # Typed representation of the detail object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] chime_ids
    #   Value of the `chime_ids` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `chime_ids`.
    #   @return [Array<String>, nil]
    #
    # @!attribute [r] content
    #   Value of the `content` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `content`.
    #   @return [String]
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] customer_ids
    #   Value of the `customer_ids` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `customer_ids`.
    #   @return [Array<String>, nil]
    #
    # @!attribute [r] email
    #   Email content, safety scan result, and system-generated schema markup for email chimes.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email`.
    #   @return [Inttegro::Chime::EmailMessage, nil]
    #
    # @!attribute [r] errors
    #   Value of the `errors` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `errors`.
    #   @return [Array<Inttegro::Broadcast::Error>, nil]
    #
    # @!attribute [r] executed_at
    #   Value of the `executed_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `executed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] idempotency_key
    #   Value of the `idempotency_key` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `idempotency_key`.
    #   @return [String, nil]
    #
    # @!attribute [r] purpose
    #   Value of the `purpose` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purpose`.
    #   @return [String, nil]
    #
    # @!attribute [r] recipients
    #   Value of the `recipients` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `recipients`.
    #   @return [Array<String>]
    #
    # @!attribute [r] send_after
    #   Value of the `send_after` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `send_after`.
    #   @return [Time]
    #
    # @!attribute [r] sender_id
    #   Value of the `sender_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `sender_id`.
    #   @return [String]
    class Detail < T::Struct
      const :chime_ids, T.nilable(T::Array[String]), default: nil
      const :content, String
      const :created_at, Time
      const :customer_ids, T.nilable(T::Array[String]), default: nil
      const :email, T.nilable(Inttegro::Chime::EmailMessage), default: nil
      const :errors, T.nilable(T::Array[Inttegro::Broadcast::Error]), default: nil
      const :executed_at, T.nilable(Time), default: nil
      const :id, String
      const :idempotency_key, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipients, T::Array[String]
      const :send_after, Time
      const :sender_id, String
    end
  end
end
