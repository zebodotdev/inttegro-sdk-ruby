# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Latest redirect visit details
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] user_agent
    #   Value of the `user_agent` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `user_agent`.
    #   @return [String]
    #
    # @!attribute [r] ip_address
    #   Value of the `ip_address` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `ip_address`.
    #   @return [String]
    #
    # @!attribute [r] at
    #   Value of the `at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `at`.
    #   @return [Time]
    class NextActionRedirectLatestVisit < T::Struct
      const :user_agent, String
      const :ip_address, String
      const :at, Time
    end
  end
end
