# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Checkout
    # Typed representation of the order created from object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] source
    #   Value of the `source` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `source`.
    #   @return [String, nil]
    #
    # @!attribute [r] resource_type
    #   Value of the `resource_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `resource_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] resource_id
    #   Value of the `resource_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `resource_id`.
    #   @return [String, nil]
    class OrderCreatedFrom < T::Struct
      const :source, T.nilable(String), default: nil
      const :resource_type, T.nilable(String), default: nil
      const :resource_id, T.nilable(String), default: nil
    end
  end
end
