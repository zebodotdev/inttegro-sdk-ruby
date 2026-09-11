# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "email_mailbox"
require_relative "email_safety_result"
require_relative "email_schema_markup"

module Inttegro
  class Chime
    # Email content, safety scan result, and system-generated schema markup for email chimes.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] subject
    #   Email subject
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `subject`.
    #   @return [String, nil]
    #
    # @!attribute [r] text
    #   Plain-text email body
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `text`.
    #   @return [String, nil]
    #
    # @!attribute [r] html
    #   Optional HTML email body before provider-specific rendering
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `html`.
    #   @return [String, nil]
    #
    # @!attribute [r] from
    #   Value of the `from` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `from`.
    #   @return [Inttegro::Chime::EmailMailbox, nil]
    #
    # @!attribute [r] reply_to
    #   Value of the `reply_to` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reply_to`.
    #   @return [Inttegro::Chime::EmailMailbox, nil]
    #
    # @!attribute [r] headers
    #   Validated provider-neutral email headers.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `headers`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] safety
    #   Result of the email safety scan
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `safety`.
    #   @return [Inttegro::Chime::EmailSafetyResult, nil]
    #
    # @!attribute [r] schema
    #   Schema.org JSON-LD markup generated at email send time.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `schema`.
    #   @return [Inttegro::Chime::EmailSchemaMarkup, nil]
    class EmailMessage < T::Struct
      const :subject, T.nilable(String), default: nil
      const :text, T.nilable(String), default: nil
      const :html, T.nilable(String), default: nil
      const :from, T.nilable(Inttegro::Chime::EmailMailbox), default: nil
      const :reply_to, T.nilable(Inttegro::Chime::EmailMailbox), default: nil
      const :headers, T.nilable(T::Hash[String, String]), default: nil
      const :safety, T.nilable(Inttegro::Chime::EmailSafetyResult), default: nil
      const :schema, T.nilable(Inttegro::Chime::EmailSchemaMarkup), default: nil
    end
  end
end
