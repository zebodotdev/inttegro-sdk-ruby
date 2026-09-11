# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # Typed representation of the scanned link object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] host
    #   Value of the `host` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `host`.
    #   @return [String, nil]
    #
    # @!attribute [r] raw
    #   Value of the `raw` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `raw`.
    #   @return [String]
    #
    # @!attribute [r] reason
    #   Value of the `reason` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason`.
    #   @return [String, nil]
    #
    # @!attribute [r] scheme
    #   Value of the `scheme` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `scheme`.
    #   @return [String]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [String]
    class ScannedLink < T::Struct
      const :host, T.nilable(String), default: nil
      const :raw, String
      const :reason, T.nilable(String), default: nil
      const :scheme, String
      const :status, String
    end
  end
end
