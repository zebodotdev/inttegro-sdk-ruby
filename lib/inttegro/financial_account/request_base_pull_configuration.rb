# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Typed representation of the request base pull configuration object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] enabled
    #   Value of the `enabled` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `enabled`.
    #   @return [Boolean, nil]
    class RequestBasePullConfiguration < T::Struct
      const :enabled, T.nilable(T::Boolean), default: nil
    end
  end
end
