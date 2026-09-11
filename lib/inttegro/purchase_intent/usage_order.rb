# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Typed representation of the usage order object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] created_at
    #   When order creation consumed the single-use Buy link
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] id
    #   Order that consumed the Buy link
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    class UsageOrder < T::Struct
      const :created_at, Time
      const :id, String
    end
  end
end
