# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Latest confirmation attempt
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] status
    #   Attempt status
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [String]
    #
    # @!attribute [r] confirmed
    #   Whether the confirmation has succeeded
    #
    #   Required in the API payload. Wire name: `confirmed`.
    #   @return [Boolean]
    #
    # @!attribute [r] reason
    #   Reason for the current attempt state
    #
    #   Required in the API payload. Wire name: `reason`.
    #   @return [String]
    #
    # @!attribute [r] executed_at
    #   When the attempt was executed
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `executed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] created_at
    #   When the attempt was created
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    class NextActionConfirmPaymentAttempt < T::Struct
      const :status, String
      const :confirmed, T::Boolean
      const :reason, String
      const :executed_at, T.nilable(Time), default: nil
      const :created_at, Time
    end
  end
end
