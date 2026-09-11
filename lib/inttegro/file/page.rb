# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "file"

module Inttegro
  class File
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] size
    #   Value of the `size` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    #
    # @!attribute [r] files
    #   Value of the `files` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `files`.
    #   @return [Array<Inttegro::File>]
    class Page < T::Struct
      const :number, Integer
      const :size, Integer
      const :files, T::Array[Inttegro::File]
    end
  end
end
