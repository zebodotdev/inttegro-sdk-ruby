# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "email_message"
require_relative "recipient_detail"
require_relative "transmission"

module Inttegro
  # A notification sent to one recipient
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] created_at
  #   Value of the `created_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `created_at`.
  #   @return [Time]
  #
  # @!attribute [r] custom_data
  #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
  #   collection rather than a raw map.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
  #   @return [Hash{String => String}, nil]
  #
  # @!attribute [r] customer_id
  #   Value of the `customer_id` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `customer_id`.
  #   @return [String, nil]
  #
  # @!attribute [r] email
  #   Email content, safety scan result, and system-generated schema markup for email chimes.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `email`.
  #   @return [Inttegro::Chime::EmailMessage, nil]
  #
  # @!attribute [r] full_message
  #   Rendered SMS content. Empty for email Chimes.
  #
  #   Required in the API payload. Wire name: `full_message`.
  #   @return [String]
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
  # @!attribute [r] recipient
  #   Recipient information in response
  #
  #   Required in the API payload. Wire name: `recipient`.
  #   @return [Inttegro::Chime::RecipientDetail]
  #
  # @!attribute [r] sender_id
  #   Value of the `sender_id` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `sender_id`.
  #   @return [String]
  #
  # @!attribute [r] transmission
  #   Value of the `transmission` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `transmission`.
  #   @return [Inttegro::Chime::Transmission, nil]
  class Chime
    const :created_at, Time
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :customer_id, T.nilable(String), default: nil
    const :email, T.nilable(Inttegro::Chime::EmailMessage), default: nil
    const :full_message, String
    const :id, String
    const :idempotency_key, T.nilable(String), default: nil
    const :purpose, T.nilable(String), default: nil
    const :recipient, Inttegro::Chime::RecipientDetail
    const :sender_id, String
    const :transmission, T.nilable(Inttegro::Chime::Transmission), default: nil
  end
end
