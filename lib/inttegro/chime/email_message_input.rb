# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "email_mailbox"

module Inttegro
  class Chime
    # Email content accepted for email chimes, broadcasts, and schedules.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] subject
    #   Email subject.
    #
    #   Required in the API payload. Wire name: `subject`.
    #   @return [String]
    #
    # @!attribute [r] text
    #   Plain-text email body.
    #
    #   Required in the API payload. Wire name: `text`.
    #   @return [String]
    #
    # @!attribute [r] html
    #   Optional HTML email body. Unsafe HTML is rejected or sanitized before delivery.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `html`.
    #   @return [String, nil]
    #
    # @!attribute [r] from
    #   Value of the `from` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `from`.
    #   @return [Inttegro::Chime::EmailMailbox]
    #
    # @!attribute [r] reply_to
    #   Optional reply-to email address.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reply_to`.
    #   @return [String, nil]
    #
    # @!attribute [r] headers
    #   Validated provider-neutral email headers.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `headers`.
    #   @return [Hash{String => String}, nil]
    class EmailMessageInput < T::Struct
      const :subject, String
      const :text, String
      const :html, T.nilable(String), default: nil
      const :from, Inttegro::Chime::EmailMailbox
      const :reply_to, T.nilable(String), default: nil
      const :headers, T.nilable(T::Hash[String, String]), default: nil
    end
  end
end
