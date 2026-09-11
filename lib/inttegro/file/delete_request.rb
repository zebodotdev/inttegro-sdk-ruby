# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # Typed representation of the delete request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] file_id
    #   Value of the `file_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `file_id`.
    #   @return [String]
    class DeleteRequest < T::Struct
      const :file_id, String
    end
  end
end
