# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "attachment_ids"
require_relative "channel"
require_relative "email_content"
require_relative "sms_content"
require_relative "variable_input"

module Inttegro
  class MessageTemplate
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   API-generated message template id.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] name
    #   Human-readable template name.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] about
    #   Optional description of when this template should be used.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] channel
    #   Existing template channel. Channels cannot be changed.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `channel`.
    #   @return [Inttegro::MessageTemplate::Channel, nil]
    #
    # @!attribute [r] purpose
    #   Caller-defined purpose for filtering and analytics.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purpose`.
    #   @return [String, nil]
    #
    # @!attribute [r] locale
    #   Value of the `locale` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `locale`.
    #   @return [String, nil]
    #
    # @!attribute [r] variables
    #   Value of the `variables` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `variables`.
    #   @return [Array<Inttegro::MessageTemplate::VariableInput>, nil]
    #
    # @!attribute [r] sms
    #   Value of the `sms` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sms`.
    #   @return [Inttegro::MessageTemplate::SMSContent, nil]
    #
    # @!attribute [r] email
    #   Value of the `email` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email`.
    #   @return [Inttegro::MessageTemplate::EmailContent, nil]
    #
    # @!attribute [r] attachments
    #   Stored file IDs returned by previews. Chime send, schedule, and broadcast currently reject
    #   stored-template attachments.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attachments`.
    #   @return [Inttegro::MessageTemplate::AttachmentIDs, nil]
    class UpdateRequest < T::Struct
      const :id, String
      const :name, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :channel, T.nilable(Inttegro::MessageTemplate::Channel), default: nil
      const :purpose, T.nilable(String), default: nil
      const :locale, T.nilable(String), default: nil
      const :variables, T.nilable(T::Array[Inttegro::MessageTemplate::VariableInput]), default: nil
      const :sms, T.nilable(Inttegro::MessageTemplate::SMSContent), default: nil
      const :email, T.nilable(Inttegro::MessageTemplate::EmailContent), default: nil
      const :attachments, T.nilable(Inttegro::MessageTemplate::AttachmentIDs), default: nil
    end
  end
end
