# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Typed representation of the payout settings request destination object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] financial_account_id
    #   Same-currency financial account with push capability enabled
    #
    #   Required in the API payload. Wire name: `financial_account_id`.
    #   @return [String]
    class PayoutSettingsRequestDestination < T::Struct
      const :financial_account_id, String
    end
  end
end
