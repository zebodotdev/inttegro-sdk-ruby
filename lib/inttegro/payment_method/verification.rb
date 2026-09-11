# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Most recent verification record when the payment method has entered a verification flow.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] completed_at
    #   When verification was completed
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `completed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] initiated_at
    #   When verification was initiated
    #
    #   Required in the API payload. Wire name: `initiated_at`.
    #   @return [Time]
    #
    # @!attribute [r] mechanism
    #   Verification mechanism used
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `mechanism`.
    #   @return [String, nil]
    #
    # @!attribute [r] request_id
    #   ID of the verification request
    #
    #   Required in the API payload. Wire name: `request_id`.
    #   @return [String]
    #
    # @!attribute [r] type
    #   Verification type
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [String]
    class Verification < T::Struct
      const :completed_at, T.nilable(Time), default: nil
      const :initiated_at, Time
      const :mechanism, T.nilable(String), default: nil
      const :request_id, String
      const :type, String
    end
  end
end
