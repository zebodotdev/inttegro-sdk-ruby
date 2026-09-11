# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "generated"

module Inttegro
  class SecretKey
    # Typed representation of the generate response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] key
    #   Newly generated secret key. The token is returned once and cannot be retrieved later.
    #
    #   Required in the API payload. Wire name: `key`.
    #   @return [Inttegro::SecretKey::Generated]
    class GenerateResponse < T::Struct
      const :key, Inttegro::SecretKey::Generated
    end
  end
end
