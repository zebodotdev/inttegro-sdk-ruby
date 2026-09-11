# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "owner_update_input"

module Inttegro
  class FinancialAccount
    # Typed representation of the update request object in the Inttegro API.
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
    # @!attribute [r] custom_data
    #   Changes to merchant-defined data. JSON null removes a key; every other JSON value is
    #   serialized to a string.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => Object}, nil]
    #
    # @!attribute [r] description
    #   Value of the `description` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] label
    #   Value of the `label` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] owner
    #   Value of the `owner` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `owner`.
    #   @return [Inttegro::FinancialAccount::OwnerUpdateInput, nil]
    #
    # @!attribute [r] reference
    #   Value of the `reference` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    class UpdateRequest < T::Struct
      const :account_id, String
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :description, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :owner, T.nilable(Inttegro::FinancialAccount::OwnerUpdateInput), default: nil
      const :reference, T.nilable(String), default: nil
    end
  end
end
