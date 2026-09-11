# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Merchant identity captured for the hosted checkout. Individual fields are omitted when
    # unavailable.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] app_name
    #   Value of the `app_name` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `app_name`.
    #   @return [String, nil]
    #
    # @!attribute [r] organization_id
    #   Value of the `organization_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `organization_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] organization_name
    #   Value of the `organization_name` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `organization_name`.
    #   @return [String, nil]
    class Merchant < T::Struct
      const :app_name, T.nilable(String), default: nil
      const :organization_id, T.nilable(String), default: nil
      const :organization_name, T.nilable(String), default: nil
    end
  end
end
