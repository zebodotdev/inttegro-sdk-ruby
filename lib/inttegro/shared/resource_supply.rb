# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Typed representation of the resource supply object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] attempt_id
    #   Value of the `attempt_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attempt_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] by
    #   Value of the `by` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `by`.
    #   @return [String]
    #
    # @!attribute [r] channel
    #   Value of the `channel` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `channel`.
    #   @return [String, nil]
    #
    # @!attribute [r] resource_id
    #   Value of the `resource_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `resource_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] resource_type
    #   Value of the `resource_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `resource_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] supplied_at
    #   Value of the `supplied_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `supplied_at`.
    #   @return [Time]
    class ResourceSupply < T::Struct
      const :attempt_id, T.nilable(String), default: nil
      const :by, String
      const :channel, T.nilable(String), default: nil
      const :resource_id, T.nilable(String), default: nil
      const :resource_type, T.nilable(String), default: nil
      const :supplied_at, Time
    end
  end
end
