# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/content_safety_status"
require_relative "scanned_link"

module Inttegro
  class MessageTemplate
    # Result of the email safety scan.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] content_hash
    #   Value of the `content_hash` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `content_hash`.
    #   @return [String]
    #
    # @!attribute [r] links
    #   Value of the `links` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `links`.
    #   @return [Array<Inttegro::MessageTemplate::ScannedLink>, nil]
    #
    # @!attribute [r] normalized_text
    #   Value of the `normalized_text` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `normalized_text`.
    #   @return [String]
    #
    # @!attribute [r] quarantine_notes
    #   Value of the `quarantine_notes` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `quarantine_notes`.
    #   @return [String, nil]
    #
    # @!attribute [r] reason_codes
    #   Value of the `reason_codes` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason_codes`.
    #   @return [Array<String>, nil]
    #
    # @!attribute [r] sanitized_html
    #   Value of the `sanitized_html` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sanitized_html`.
    #   @return [String, nil]
    #
    # @!attribute [r] scanner
    #   Value of the `scanner` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `scanner`.
    #   @return [String]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [Inttegro::Shared::ContentSafetyStatus]
    class SafetyResult < T::Struct
      const :content_hash, String
      const :links, T.nilable(T::Array[Inttegro::MessageTemplate::ScannedLink]), default: nil
      const :normalized_text, String
      const :quarantine_notes, T.nilable(String), default: nil
      const :reason_codes, T.nilable(T::Array[String]), default: nil
      const :sanitized_html, T.nilable(String), default: nil
      const :scanner, String
      const :status, Inttegro::Shared::ContentSafetyStatus
    end
  end
end
