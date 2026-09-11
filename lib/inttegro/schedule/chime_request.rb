# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../chime/email_message_input"
require_relative "../chime/recipient"
require_relative "../message_template/reference"
require_relative "chime_request_request_meta"

module Inttegro
  module Schedule
    # Typed representation of the chime request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] request_meta
    #   Value of the `request_meta` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `request_meta`.
    #   @return [Inttegro::Schedule::ChimeRequestRequestMeta, nil]
    #
    # @!attribute [r] recipients
    #   Recipient objects for this scheduled chime. Each item must include `transport` and either
    #   inline contact details or `customer_id`.
    #
    #   Required in the API payload. Wire name: `recipients`.
    #   @return [Array<Inttegro::Chime::Recipient>]
    #
    # @!attribute [r] send_after
    #   ISO 8601 timestamp for when to send the chime (must be in the future)
    #
    #   Required in the API payload. Wire name: `send_after`.
    #   @return [Time]
    #
    # @!attribute [r] full_message
    #   Complete SMS message content. Use only with SMS recipients.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `full_message`.
    #   @return [String, nil]
    #
    # @!attribute [r] email
    #   Email content accepted for email chimes, broadcasts, and schedules.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email`.
    #   @return [Inttegro::Chime::EmailMessageInput, nil]
    #
    # @!attribute [r] message_template
    #   Value of the `message_template` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `message_template`.
    #   @return [Inttegro::MessageTemplate::Reference, nil]
    #
    # @!attribute [r] sender_id
    #   Sender identifier displayed to recipients
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sender_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] purpose
    #   Optional purpose or category for this scheduled chime
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purpose`.
    #   @return [String, nil]
    class ChimeRequest < T::Struct
      const :request_meta, T.nilable(Inttegro::Schedule::ChimeRequestRequestMeta), default: nil
      const :recipients, T::Array[Inttegro::Chime::Recipient]
      const :send_after, Time
      const :full_message, T.nilable(String), default: nil
      const :email, T.nilable(Inttegro::Chime::EmailMessageInput), default: nil
      const :message_template, T.nilable(Inttegro::MessageTemplate::Reference), default: nil
      const :sender_id, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
    end
  end
end
