# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "type"

module Inttegro
  class FinancialAccount
    # Typed representation of the compact object in the Inttegro API.
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
    # @!attribute [r] currency
    #   Value of the `currency` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `currency`.
    #   @return [String]
    #
    # @!attribute [r] description
    #   Value of the `description` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] disconnected_at
    #   Value of the `disconnected_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `disconnected_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] label
    #   Value of the `label` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::FinancialAccount::Type]
    class Compact < T::Struct
      const :created_at, Time
      const :currency, String
      const :description, T.nilable(String), default: nil
      const :disconnected_at, T.nilable(Time), default: nil
      const :id, String
      const :label, T.nilable(String), default: nil
      const :type, Inttegro::FinancialAccount::Type
    end
  end
end
