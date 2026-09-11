# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class SecretKey
    # Typed representation of the usage request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Page number. Omitted or 0 is normalized to 1.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] page
    #   Page number alias. Omitted or 0 is normalized to 1.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] secret_key_id
    #   Secret key identifier whose recent activity should be returned.
    #
    #   Required in the API payload. Wire name: `secret_key_id`.
    #   @return [String]
    #
    # @!attribute [r] size
    #   Requested page size. Omitted or 0 becomes 50; values above 100 are capped at 100.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `size`.
    #   @return [Integer, nil]
    class UsageRequest < T::Struct
      const :number, T.nilable(Integer), default: nil
      const :page, T.nilable(Integer), default: nil
      const :secret_key_id, String
      const :size, T.nilable(Integer), default: nil
    end
  end
end
