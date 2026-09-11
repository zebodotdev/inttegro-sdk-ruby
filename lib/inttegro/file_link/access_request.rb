# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FileLink
    # Typed representation of the access request object in the Inttegro API.
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
    #
    # @!attribute [r] allowed_ip_ranges
    #   Value of the `allowed_ip_ranges` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `allowed_ip_ranges`.
    #   @return [Array<String>, nil]
    class AccessRequest < T::Struct
      const :max_accesses, T.nilable(Integer), default: nil
      const :allow_download, T.nilable(T::Boolean), default: nil
      const :allowed_origins, T.nilable(T::Array[String]), default: nil
      const :allowed_ip_ranges, T.nilable(T::Array[String]), default: nil
    end
  end
end
