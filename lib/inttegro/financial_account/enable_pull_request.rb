# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Typed representation of the enable pull request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] account_id
    #   Value of the `account_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `account_id`.
    #   @return [String]
    #
    # @!attribute [r] ip_address
    #   Client IP captured for the mandate. This is not inferred from the request.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `ip_address`.
    #   @return [String, nil]
    #
    # @!attribute [r] user_agent
    #   Client user agent captured for the mandate. This is not inferred from the request.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `user_agent`.
    #   @return [String, nil]
    class EnablePullRequest < T::Struct
      const :account_id, String
      const :ip_address, T.nilable(String), default: nil
      const :user_agent, T.nilable(String), default: nil
    end
  end
end
