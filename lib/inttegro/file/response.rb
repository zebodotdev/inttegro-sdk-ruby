# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "file"

module Inttegro
  class File
    # Typed representation of the response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] file
    #   Public file metadata. Storage provider details, object keys, and idempotency internals are
    #   not exposed.
    #
    #   Required in the API payload. Wire name: `file`.
    #   @return [Inttegro::File]
    class Response < T::Struct
      const :file, Inttegro::File
    end
  end
end
