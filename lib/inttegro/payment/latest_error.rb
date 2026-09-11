# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Typed representation of the latest error object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] message
    #   Value of the `message` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `message`.
    #   @return [String]
    #
    # @!attribute [r] docs_url
    #   Value of the `docs_url` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `docs_url`.
    #   @return [String]
    #
    # @!attribute [r] source
    #   Value of the `source` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `source`.
    #   @return [String]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [String]
    #
    # @!attribute [r] code
    #   Value of the `code` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `code`.
    #   @return [String]
    class LatestError < T::Struct
      const :message, String
      const :docs_url, String
      const :source, String
      const :type, String
      const :code, String
    end
  end
end
