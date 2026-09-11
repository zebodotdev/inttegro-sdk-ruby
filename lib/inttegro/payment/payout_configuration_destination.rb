# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Where the funds will be paid out
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] financial_account_id
    #   ID of the financial account receiving the payout
    #
    #   Required in the API payload. Wire name: `financial_account_id`.
    #   @return [String]
    class PayoutConfigurationDestination < T::Struct
      const :financial_account_id, String
    end
  end
end
