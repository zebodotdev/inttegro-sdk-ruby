# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # Typed representation of the create request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] file
    #   Binary file part to store.
    #
    #   Required in the API payload. Wire name: `file`.
    #   @return [String]
    #
    # @!attribute [r] purpose
    #   File purpose policy to apply.
    #
    #   Required in the API payload. Wire name: `purpose`.
    #   @return [String]
    #
    # @!attribute [r] title
    #   Optional display title for the file.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `title`.
    #   @return [String, nil]
    #
    # @!attribute [r] custom_data
    #   JSON object encoded as a string. Values must be strings.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [String, nil]
    class CreateRequest < T::Struct
      const :file, String
      const :purpose, String
      const :title, T.nilable(String), default: nil
      const :custom_data, T.nilable(String), default: nil
    end
  end
end
