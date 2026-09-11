# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Broadcast
    # Error encountered when broadcasting to a specific recipient
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] recipient
    #   Recipient address that caused the error
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `recipient`.
    #   @return [String, nil]
    #
    # @!attribute [r] fix_code
    #   Code indicating how to fix this error
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `fix_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Error type classification
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `type`.
    #   @return [String, nil]
    class Error < T::Struct
      const :recipient, T.nilable(String), default: nil
      const :fix_code, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
    end
  end
end
