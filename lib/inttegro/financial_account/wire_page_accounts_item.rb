# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "type"

module Inttegro
  class FinancialAccount
    # Typed representation of the wire page accounts item object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Financial account identifier
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Type of financial account
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `type`.
    #   @return [Inttegro::FinancialAccount::Type, nil]
    #
    # @!attribute [r] currency
    #   Three-letter ISO currency code
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `currency`.
    #   @return [String, nil]
    #
    # @!attribute [r] label
    #   Human-readable label
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] description
    #   Optional description
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] reference
    #   External reference ID
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] created_at
    #   Account creation timestamp
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `created_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] archived_at
    #   Archive timestamp (if archived)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `archived_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    class WirePageAccountsItem < T::Struct
      const :id, T.nilable(String), default: nil
      const :type, T.nilable(Inttegro::FinancialAccount::Type), default: nil
      const :currency, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :created_at, T.nilable(Time), default: nil
      const :archived_at, T.nilable(Time), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    end
  end
end
