# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # Purpose-authorized public delivery metadata for browser-rendered assets. Callers should
    # store file IDs as canonical references and treat these URLs as render URLs.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] public_url
    #   Unsigned CDN URL for public-safe assets such as product images.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `public_url`.
    #   @return [String, nil]
    #
    # @!attribute [r] cache_control
    #   Value of the `cache_control` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `cache_control`.
    #   @return [String, nil]
    #
    # @!attribute [r] content_type
    #   Value of the `content_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `content_type`.
    #   @return [String, nil]
    class Delivery < T::Struct
      const :public_url, T.nilable(String), default: nil
      const :cache_control, T.nilable(String), default: nil
      const :content_type, T.nilable(String), default: nil
    end
  end
end
