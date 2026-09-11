# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "owner_update_input_address"

module Inttegro
  class FinancialAccount
    # Typed representation of the owner update input object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] address
    #   Value of the `address` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `address`.
    #   @return [Inttegro::FinancialAccount::OwnerUpdateInputAddress, nil]
    class OwnerUpdateInput < T::Struct
      const :name, T.nilable(String), default: nil
      const :address, T.nilable(Inttegro::FinancialAccount::OwnerUpdateInputAddress), default: nil
    end
  end
end
