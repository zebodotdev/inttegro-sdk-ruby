# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "input"

module Inttegro
  module FileReference
    # Typed representation of the reconcile request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] resource_type
    #   Non-blank resource type after trimming.
    #
    #   Required in the API payload. Wire name: `resource_type`.
    #   @return [String]
    #
    # @!attribute [r] resource_id
    #   Non-blank resource ID after trimming.
    #
    #   Required in the API payload. Wire name: `resource_id`.
    #   @return [String]
    #
    # @!attribute [r] references
    #   Value of the `references` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `references`.
    #   @return [Array<Inttegro::FileReference::Input>, nil]
    class ReconcileRequest < T::Struct
      const :resource_type, String
      const :resource_id, String
      const :references, T.nilable(T::Array[Inttegro::FileReference::Input]), default: nil
    end
  end
end
