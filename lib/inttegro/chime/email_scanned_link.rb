# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/content_safety_status"

module Inttegro
  class Chime
    # Typed representation of the email scanned link object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] raw
    #   Value of the `raw` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `raw`.
    #   @return [String, nil]
    #
    # @!attribute [r] scheme
    #   Value of the `scheme` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `scheme`.
    #   @return [String, nil]
    #
    # @!attribute [r] host
    #   Value of the `host` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `host`.
    #   @return [String, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [Inttegro::Shared::ContentSafetyStatus, nil]
    #
    # @!attribute [r] reason
    #   Value of the `reason` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason`.
    #   @return [String, nil]
    class EmailScannedLink < T::Struct
      const :raw, T.nilable(String), default: nil
      const :scheme, T.nilable(String), default: nil
      const :host, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Shared::ContentSafetyStatus), default: nil
      const :reason, T.nilable(String), default: nil
    end
  end
end
