# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "attachment_ids"
require_relative "channel"
require_relative "email_content"
require_relative "sms_content"
require_relative "status"
require_relative "variable"

module Inttegro
  # Typed representation of the message template object in the Inttegro API.
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] id
  #   API-generated unique template id.
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] name
  #   Value of the `name` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `name`.
  #   @return [String]
  #
  # @!attribute [r] about
  #   Value of the `about` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
  #   @return [String, nil]
  #
  # @!attribute [r] channel
  #   Value of the `channel` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `channel`.
  #   @return [Inttegro::MessageTemplate::Channel]
  #
  # @!attribute [r] purpose
  #   Value of the `purpose` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `purpose`.
  #   @return [String]
  #
  # @!attribute [r] locale
  #   Value of the `locale` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `locale`.
  #   @return [String]
  #
  # @!attribute [r] status
  #   Value of the `status` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `status`.
  #   @return [Inttegro::MessageTemplate::Status]
  #
  # @!attribute [r] version
  #   Value of the `version` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `version`.
  #   @return [Integer]
  #
  # @!attribute [r] published_version
  #   Value of the `published_version` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `published_version`.
  #   @return [Integer, nil]
  #
  # @!attribute [r] draft_version
  #   Value of the `draft_version` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `draft_version`.
  #   @return [Integer]
  #
  # @!attribute [r] has_unpublished_changes
  #   Value of the `has_unpublished_changes` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `has_unpublished_changes`.
  #   @return [Boolean]
  #
  # @!attribute [r] variables
  #   Value of the `variables` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `variables`.
  #   @return [Array<Inttegro::MessageTemplate::Variable>, nil]
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
  #
  # @!attribute [r] created_at
  #   Value of the `created_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `created_at`.
  #   @return [Time]
  #
  # @!attribute [r] updated_at
  #   Value of the `updated_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `updated_at`.
  #   @return [Time]
  #
  # @!attribute [r] published_at
  #   Value of the `published_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `published_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] archived_at
  #   Value of the `archived_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `archived_at`.
  #   @return [Time, nil]
  class MessageTemplate
    const :id, String
    const :name, String
    const :about, T.nilable(String), default: nil
    const :channel, Inttegro::MessageTemplate::Channel
    const :purpose, String
    const :locale, String
    const :status, Inttegro::MessageTemplate::Status
    const :version, Integer
    const :published_version, T.nilable(Integer), default: nil
    const :draft_version, Integer
    const :has_unpublished_changes, T::Boolean
    const :variables, T.nilable(T::Array[Inttegro::MessageTemplate::Variable]), default: nil
    const :sms, T.nilable(Inttegro::MessageTemplate::SMSContent), default: nil
    const :email, T.nilable(Inttegro::MessageTemplate::EmailContent), default: nil
    const :attachments, T.nilable(Inttegro::MessageTemplate::AttachmentIDs), default: nil
    const :created_at, Time
    const :updated_at, Time
    const :published_at, T.nilable(Time), default: nil
    const :archived_at, T.nilable(Time), default: nil
  end
end
