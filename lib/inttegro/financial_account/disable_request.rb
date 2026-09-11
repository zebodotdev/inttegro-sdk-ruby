# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Typed representation of the disable request object in the Inttegro API.
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
    # @!attribute [r] unset_as_payout_destination
    #   Remove this account from payout destinations before the state change. If false, a mapped
    #   account is rejected.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `unset_as_payout_destination`.
    #   @return [Boolean, nil]
    class DisableRequest < T::Struct
      const :account_id, String
      const :unset_as_payout_destination, T.nilable(T::Boolean), default: nil
    end
  end
end
