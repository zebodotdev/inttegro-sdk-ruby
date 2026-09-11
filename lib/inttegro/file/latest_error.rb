# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # Typed representation of the latest error object in the Inttegro API.
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
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `code`.
    #   @return [String, nil]
    #
    # @!attribute [r] message
    #   Value of the `message` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `message`.
    #   @return [String, nil]
    #
    # @!attribute [r] retryable
    #   Value of the `retryable` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `retryable`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] at
    #   Value of the `at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `at`.
    #   @return [Time, nil]
    class LatestError < T::Struct
      const :code, T.nilable(String), default: nil
      const :message, T.nilable(String), default: nil
      const :retryable, T.nilable(T::Boolean), default: nil
      const :at, T.nilable(Time), default: nil
    end
  end
end
