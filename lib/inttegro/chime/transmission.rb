# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "email_event"
require_relative "transport"

module Inttegro
  class Chime
    # Typed representation of the transmission object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] address
    #   Value of the `address` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `address`.
    #   @return [String]
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] delivered_at
    #   Value of the `delivered_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `delivered_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] email_events
    #   Value of the `email_events` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email_events`.
    #   @return [Array<Inttegro::Chime::EmailEvent>, nil]
    #
    # @!attribute [r] email_failure_code
    #   Value of the `email_failure_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email_failure_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] email_failure_reason
    #   Value of the `email_failure_reason` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email_failure_reason`.
    #   @return [String, nil]
    #
    # @!attribute [r] email_status
    #   Value of the `email_status` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email_status`.
    #   @return [String, nil]
    #
    # @!attribute [r] error
    #   Value of the `error` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `error`.
    #   @return [String, nil]
    #
    # @!attribute [r] failed_at
    #   Value of the `failed_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `failed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] gateway
    #   Value of the `gateway` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `gateway`.
    #   @return [String]
    #
    # @!attribute [r] gateway_message_id
    #   Value of the `gateway_message_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `gateway_message_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] initialized_at
    #   Value of the `initialized_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `initialized_at`.
    #   @return [Time]
    #
    # @!attribute [r] last_email_event_at
    #   Value of the `last_email_event_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `last_email_event_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] mechanism
    #   Value of the `mechanism` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `mechanism`.
    #   @return [Inttegro::Chime::Transport]
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
    #   @return [Inttegro::Chime::Transport, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [String]
    #
    # @!attribute [r] suppressed_at
    #   Value of the `suppressed_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `suppressed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] suppression_reason
    #   Value of the `suppression_reason` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `suppression_reason`.
    #   @return [String, nil]
    class Transmission < T::Struct
      const :address, String
      const :created_at, Time
      const :delivered_at, T.nilable(Time), default: nil
      const :email_events, T.nilable(T::Array[Inttegro::Chime::EmailEvent]), default: nil
      const :email_failure_code, T.nilable(String), default: nil
      const :email_failure_reason, T.nilable(String), default: nil
      const :email_status, T.nilable(String), default: nil
      const :error, T.nilable(String), default: nil
      const :failed_at, T.nilable(Time), default: nil
      const :gateway, String
      const :gateway_message_id, T.nilable(String), default: nil
      const :id, String
      const :initialized_at, Time
      const :last_email_event_at, T.nilable(Time), default: nil
      const :mechanism, Inttegro::Chime::Transport
      const :sent_at, T.nilable(Time), default: nil
      const :sent_via, T.nilable(Inttegro::Chime::Transport), default: nil
      const :status, String
      const :suppressed_at, T.nilable(Time), default: nil
      const :suppression_reason, T.nilable(String), default: nil
    end
  end
end
