# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/content_safety_status"
require_relative "email_scanned_link"

module Inttegro
  class Chime
    # Result of the email safety scan
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] status
    #   Safety decision for the email content
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [Inttegro::Shared::ContentSafetyStatus, nil]
    #
    # @!attribute [r] reason_codes
    #   Machine-readable reasons for non-allowed results
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason_codes`.
    #   @return [Array<String>, nil]
    #
    # @!attribute [r] sanitized_html
    #   Sanitized HTML body used for provider send when present
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sanitized_html`.
    #   @return [String, nil]
    #
    # @!attribute [r] normalized_text
    #   Normalized plain-text body used by the scanner
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `normalized_text`.
    #   @return [String, nil]
    #
    # @!attribute [r] links
    #   Value of the `links` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `links`.
    #   @return [Array<Inttegro::Chime::EmailScannedLink>, nil]
    #
    # @!attribute [r] scanner
    #   Safety scanner identifier
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `scanner`.
    #   @return [String, nil]
    #
    # @!attribute [r] content_hash
    #   Hash of the scanned email content
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `content_hash`.
    #   @return [String, nil]
    #
    # @!attribute [r] quarantine_notes
    #   Value of the `quarantine_notes` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `quarantine_notes`.
    #   @return [String, nil]
    class EmailSafetyResult < T::Struct
      const :status, T.nilable(Inttegro::Shared::ContentSafetyStatus), default: nil
      const :reason_codes, T.nilable(T::Array[String]), default: nil
      const :sanitized_html, T.nilable(String), default: nil
      const :normalized_text, T.nilable(String), default: nil
      const :links, T.nilable(T::Array[Inttegro::Chime::EmailScannedLink]), default: nil
      const :scanner, T.nilable(String), default: nil
      const :content_hash, T.nilable(String), default: nil
      const :quarantine_notes, T.nilable(String), default: nil
    end
  end
end
