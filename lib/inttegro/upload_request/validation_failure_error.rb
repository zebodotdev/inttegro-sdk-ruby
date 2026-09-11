# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class UploadRequest
    # Typed representation of the validation failure error object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] code
    #   Value of the `code` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `code`.
    #   @return [String]
    #
    # @!attribute [r] param
    #   Value of the `param` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `param`.
    #   @return [String, nil]
    #
    # @!attribute [r] message
    #   Value of the `message` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `message`.
    #   @return [String]
    #
    # @!attribute [r] retryable
    #   Value of the `retryable` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `retryable`.
    #   @return [Boolean]
    class ValidationFailureError < T::Struct
      const :code, String
      const :param, T.nilable(String), default: nil
      const :message, String
      const :retryable, T::Boolean
    end
  end
end
