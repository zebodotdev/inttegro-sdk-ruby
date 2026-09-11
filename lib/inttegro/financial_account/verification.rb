# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "verification_request"

module Inttegro
  class FinancialAccount
    # Typed representation of the verification object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] initiated_at
    #   Value of the `initiated_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `initiated_at`.
    #   @return [Time]
    #
    # @!attribute [r] completed_at
    #   Value of the `completed_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `completed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] request
    #   Value of the `request` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `request`.
    #   @return [Inttegro::FinancialAccount::VerificationRequest]
    class Verification < T::Struct
      const :initiated_at, Time
      const :completed_at, T.nilable(Time), default: nil
      const :request, Inttegro::FinancialAccount::VerificationRequest
    end
  end
end
