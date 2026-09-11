# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "created"

module Inttegro
  class FinancialAccount
    # Typed representation of the create response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] account
    #   Value of the `account` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `account`.
    #   @return [Inttegro::FinancialAccount::Created, nil]
    class CreateResponse < T::Struct
      const :account, T.nilable(Inttegro::FinancialAccount::Created), default: nil
    end
  end
end
