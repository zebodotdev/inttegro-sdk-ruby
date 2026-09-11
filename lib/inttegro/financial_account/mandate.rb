# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Typed representation of the mandate object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] ip_address
    #   Value of the `ip_address` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `ip_address`.
    #   @return [String]
    #
    # @!attribute [r] user_agent
    #   Value of the `user_agent` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `user_agent`.
    #   @return [String]
    class Mandate < T::Struct
      const :created_at, Time
      const :id, String
      const :ip_address, String
      const :user_agent, String
    end
  end
end
