# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Typed representation of the verification request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] mechanism
    #   Value of the `mechanism` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `mechanism`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `type`.
    #   @return [String, nil]
    class VerificationRequest < T::Struct
      const :id, T.nilable(String), default: nil
      const :mechanism, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
    end
  end
end
