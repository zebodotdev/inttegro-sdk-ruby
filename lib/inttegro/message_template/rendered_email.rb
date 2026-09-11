# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "mailbox"
require_relative "safety_result"

module Inttegro
  class MessageTemplate
    # Typed representation of the rendered email object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] subject
    #   Value of the `subject` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `subject`.
    #   @return [String]
    #
    # @!attribute [r] text
    #   Value of the `text` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `text`.
    #   @return [String]
    #
    # @!attribute [r] html
    #   Value of the `html` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `html`.
    #   @return [String, nil]
    #
    # @!attribute [r] from
    #   Value of the `from` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `from`.
    #   @return [Inttegro::MessageTemplate::Mailbox, nil]
    #
    # @!attribute [r] reply_to
    #   Value of the `reply_to` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reply_to`.
    #   @return [Inttegro::MessageTemplate::Mailbox, nil]
    #
    # @!attribute [r] headers
    #   Validated provider-neutral email headers.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `headers`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] safety
    #   Result of the email safety scan.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `safety`.
    #   @return [Inttegro::MessageTemplate::SafetyResult, nil]
    class RenderedEmail < T::Struct
      const :subject, String
      const :text, String
      const :html, T.nilable(String), default: nil
      const :from, T.nilable(Inttegro::MessageTemplate::Mailbox), default: nil
      const :reply_to, T.nilable(Inttegro::MessageTemplate::Mailbox), default: nil
      const :headers, T.nilable(T::Hash[String, String]), default: nil
      const :safety, T.nilable(Inttegro::MessageTemplate::SafetyResult), default: nil
    end
  end
end
