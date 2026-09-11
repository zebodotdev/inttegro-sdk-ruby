# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FileLink
    # Typed representation of the access object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] max_accesses
    #   Value of the `max_accesses` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `max_accesses`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] access_count
    #   Value of the `access_count` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `access_count`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] last_accessed_at
    #   Value of the `last_accessed_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `last_accessed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] allow_download
    #   Value of the `allow_download` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `allow_download`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] allowed_origins
    #   Value of the `allowed_origins` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `allowed_origins`.
    #   @return [Array<String>, nil]
    class Access < T::Struct
      const :max_accesses, T.nilable(Integer), default: nil
      const :access_count, T.nilable(Integer), default: nil
      const :last_accessed_at, T.nilable(Time), default: nil
      const :allow_download, T.nilable(T::Boolean), default: nil
      const :allowed_origins, T.nilable(T::Array[String]), default: nil
    end
  end
end
