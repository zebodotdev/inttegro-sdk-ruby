# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../message_template/reference"
require_relative "email_message_input"
require_relative "recipient"
require_relative "send_request_request_meta"

module Inttegro
  class Chime
    # Request to send a chime to a recipient. SMS recipients accept either `full_message` or
    # `message_template`. Email recipients accept either `email` or `message_template`.
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
    #   @return [Inttegro::Chime::Recipient]
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
    #   Sender identifier shown to recipient. Uses default sender if not provided.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sender_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] purpose
    #   Purpose of this chime for categorization and analytics
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purpose`.
    #   @return [String, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] request_meta
    #   Optional metadata controlling request processing
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `request_meta`.
    #   @return [Inttegro::Chime::SendRequestRequestMeta, nil]
    class SendRequest < T::Struct
      const :recipient, Inttegro::Chime::Recipient
      const :full_message, T.nilable(String), default: nil
      const :email, T.nilable(Inttegro::Chime::EmailMessageInput), default: nil
      const :message_template, T.nilable(Inttegro::MessageTemplate::Reference), default: nil
      const :sender_id, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :request_meta, T.nilable(Inttegro::Chime::SendRequestRequestMeta), default: nil
    end
  end
end
