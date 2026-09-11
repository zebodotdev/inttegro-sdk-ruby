# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "storage_encoding"

module Inttegro
  class File
    # Typed representation of the public storage object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] encoding
    #   Encoding of the stored representation.
    #
    #   Required in the API payload. Wire name: `encoding`.
    #   @return [Inttegro::File::StorageEncoding]
    #
    # @!attribute [r] stored_size
    #   Stored byte size after any lossless encoding.
    #
    #   Required in the API payload. Wire name: `stored_size`.
    #   @return [Integer]
    class PublicStorage < T::Struct
      const :encoding, Inttegro::File::StorageEncoding
      const :stored_size, Integer
    end
  end
end
