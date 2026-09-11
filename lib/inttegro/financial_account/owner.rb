# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "address"

module Inttegro
  class FinancialAccount
    # Typed representation of the owner object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] address
    #   Value of the `address` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `address`.
    #   @return [Inttegro::FinancialAccount::Address]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    class Owner < T::Struct
      const :address, Inttegro::FinancialAccount::Address
      const :name, String
    end
  end
end
