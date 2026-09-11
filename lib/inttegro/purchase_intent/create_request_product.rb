# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Product selection with optional variant-set configuration. Use this instead of product_id.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Product ID to sell through the Buy link
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] variant_set_id
    #   Optional variant set ID the hosted checkout may use for sibling product selection
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `variant_set_id`.
    #   @return [String, nil]
    class CreateRequestProduct < T::Struct
      const :id, String
      const :variant_set_id, T.nilable(String), default: nil
    end
  end
end
