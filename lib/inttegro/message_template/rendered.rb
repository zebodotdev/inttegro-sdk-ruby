# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "attachment_ids"
require_relative "channel"
require_relative "rendered_email"
require_relative "rendered_sms"

module Inttegro
  class MessageTemplate
    # Typed representation of the rendered object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] channel
    #   Value of the `channel` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `channel`.
    #   @return [Inttegro::MessageTemplate::Channel]
    #
    # @!attribute [r] attachments
    #   Stored file IDs returned by previews. Chime send, schedule, and broadcast currently reject
    #   stored-template attachments.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attachments`.
    #   @return [Inttegro::MessageTemplate::AttachmentIDs, nil]
    #
    # @!attribute [r] sms
    #   Value of the `sms` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sms`.
    #   @return [Inttegro::MessageTemplate::RenderedSMS, nil]
    #
    # @!attribute [r] email
    #   Value of the `email` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email`.
    #   @return [Inttegro::MessageTemplate::RenderedEmail, nil]
    class Rendered < T::Struct
      const :channel, Inttegro::MessageTemplate::Channel
      const :attachments, T.nilable(Inttegro::MessageTemplate::AttachmentIDs), default: nil
      const :sms, T.nilable(Inttegro::MessageTemplate::RenderedSMS), default: nil
      const :email, T.nilable(Inttegro::MessageTemplate::RenderedEmail), default: nil
    end
  end
end
