# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # Typed representation of the media object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] kind
    #   Value of the `kind` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `kind`.
    #   @return [String, nil]
    #
    # @!attribute [r] width
    #   Value of the `width` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `width`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] height
    #   Value of the `height` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `height`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] duration_ms
    #   Value of the `duration_ms` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `duration_ms`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] page_count
    #   Value of the `page_count` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_count`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] frame_count
    #   Value of the `frame_count` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `frame_count`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] color_space
    #   Value of the `color_space` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `color_space`.
    #   @return [String, nil]
    #
    # @!attribute [r] has_alpha
    #   Value of the `has_alpha` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `has_alpha`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] codec
    #   Value of the `codec` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `codec`.
    #   @return [String, nil]
    #
    # @!attribute [r] aspect_ratio
    #   Value of the `aspect_ratio` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `aspect_ratio`.
    #   @return [String, nil]
    class Media < T::Struct
      const :kind, T.nilable(String), default: nil
      const :width, T.nilable(Integer), default: nil
      const :height, T.nilable(Integer), default: nil
      const :duration_ms, T.nilable(Integer), default: nil
      const :page_count, T.nilable(Integer), default: nil
      const :frame_count, T.nilable(Integer), default: nil
      const :color_space, T.nilable(String), default: nil
      const :has_alpha, T.nilable(T::Boolean), default: nil
      const :codec, T.nilable(String), default: nil
      const :aspect_ratio, T.nilable(String), default: nil
    end
  end
end
