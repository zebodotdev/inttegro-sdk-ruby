# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # Standard error response shape for file API endpoints.
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
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `message`.
    #   @return [String, nil]
    #
    # @!attribute [r] fix_code
    #   Value of the `fix_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `fix_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] detail
    #   Value of the `detail` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `detail`.
    #   @return [String, nil]
    #
    # @!attribute [r] cause
    #   Value of the `cause` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `cause`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `type`.
    #   @return [String, nil]
    #
    # @!attribute [r] code
    #   Value of the `code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `code`.
    #   @return [String, nil]
    #
    # @!attribute [r] url
    #   Value of the `url` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `url`.
    #   @return [String, nil]
    class ApiError < T::Struct
      const :message, T.nilable(String), default: nil
      const :fix_code, T.nilable(String), default: nil
      const :detail, T.nilable(String), default: nil
      const :cause, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
      const :code, T.nilable(String), default: nil
      const :url, T.nilable(String), default: nil
    end
  end
end
