# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module FileReference
    # Typed representation of the input object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] file_id
    #   Non-blank file ID after trimming.
    #
    #   Required in the API payload. Wire name: `file_id`.
    #   @return [String]
    #
    # @!attribute [r] field
    #   Non-blank resource field after trimming.
    #
    #   Required in the API payload. Wire name: `field`.
    #   @return [String]
    #
    # @!attribute [r] reference
    #   Caller-supplied file or file link reference.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] reference_kind
    #   Caller-defined reference kind; `file` and `file_link` are recommended.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference_kind`.
    #   @return [String, nil]
    #
    # @!attribute [r] purpose
    #   Value of the `purpose` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purpose`.
    #   @return [String, nil]
    class Input < T::Struct
      const :file_id, String
      const :field, String
      const :reference, T.nilable(String), default: nil
      const :reference_kind, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
    end
  end
end
