# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class UploadRequest
    # Typed representation of the attempts object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] max_attempts
    #   Value of the `max_attempts` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `max_attempts`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] attempt_count
    #   Value of the `attempt_count` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `attempt_count`.
    #   @return [Integer]
    #
    # @!attribute [r] failed_attempt_count
    #   Value of the `failed_attempt_count` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `failed_attempt_count`.
    #   @return [Integer]
    #
    # @!attribute [r] last_attempted_at
    #   Value of the `last_attempted_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `last_attempted_at`.
    #   @return [Time, nil]
    class Attempts < T::Struct
      const :max_attempts, T.nilable(Integer), default: nil
      const :attempt_count, Integer
      const :failed_attempt_count, Integer
      const :last_attempted_at, T.nilable(Time), default: nil
    end
  end
end
