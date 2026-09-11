# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # Encoding of the stored representation.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class StorageEncoding < T::Enum
      enums do
        # Serialized wire value: `identity`.
        # @return [Inttegro::File::StorageEncoding]
        IDENTITY = new("identity")
        # Serialized wire value: `br`.
        # @return [Inttegro::File::StorageEncoding]
        BR = new("br")
      end
    end
  end
end
