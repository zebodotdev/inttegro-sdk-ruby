# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "attachment_ids"
require_relative "create_email_request_channel"
require_relative "email_content"
require_relative "variable_input"

module Inttegro
  class MessageTemplate
    # Typed representation of the create email request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] about
    #   Value of the `about` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] attachments
    #   Stored file IDs returned by previews. Chime send, schedule, and broadcast currently reject
    #   stored-template attachments.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attachments`.
    #   @return [Inttegro::MessageTemplate::AttachmentIDs, nil]
    #
    # @!attribute [r] channel
    #   Value of the `channel` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `channel`.
    #   @return [Inttegro::MessageTemplate::CreateEmailRequestChannel]
    #
    # @!attribute [r] email
    #   Value of the `email` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `email`.
    #   @return [Inttegro::MessageTemplate::EmailContent]
    #
    # @!attribute [r] locale
    #   Value of the `locale` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `locale`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] purpose
    #   Value of the `purpose` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `purpose`.
    #   @return [String]
    #
    # @!attribute [r] variables
    #   Value of the `variables` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `variables`.
    #   @return [Array<Inttegro::MessageTemplate::VariableInput>, nil]
    class CreateEmailRequest < T::Struct
      const :about, T.nilable(String), default: nil
      const :attachments, T.nilable(Inttegro::MessageTemplate::AttachmentIDs), default: nil
      const :channel, Inttegro::MessageTemplate::CreateEmailRequestChannel
      const :email, Inttegro::MessageTemplate::EmailContent
      const :locale, T.nilable(String), default: nil
      const :name, String
      const :purpose, String
      const :variables, T.nilable(T::Array[Inttegro::MessageTemplate::VariableInput]), default: nil
    end
  end
end
