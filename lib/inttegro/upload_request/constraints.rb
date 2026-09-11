# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class UploadRequest
    # Typed representation of the constraints object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] min_size
    #   Value of the `min_size` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `min_size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] max_size
    #   Value of the `max_size` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `max_size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] exact_size
    #   Value of the `exact_size` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `exact_size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] content_types
    #   Value of the `content_types` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `content_types`.
    #   @return [Array<String>, nil]
    #
    # @!attribute [r] extensions
    #   Value of the `extensions` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `extensions`.
    #   @return [Array<String>, nil]
    #
    # @!attribute [r] filename
    #   Value of the `filename` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `filename`.
    #   @return [String, nil]
    class Constraints < T::Struct
      const :min_size, T.nilable(Integer), default: nil
      const :max_size, T.nilable(Integer), default: nil
      const :exact_size, T.nilable(Integer), default: nil
      const :content_types, T.nilable(T::Array[String]), default: nil
      const :extensions, T.nilable(T::Array[String]), default: nil
      const :filename, T.nilable(String), default: nil
    end
  end
end
