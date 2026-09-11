# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "secret_key"
require_relative "usage_page"

module Inttegro
  class SecretKey
    # Typed representation of the usage object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] key
    #   Public secret key metadata. The bearer token is never returned by read or mutation
    #   endpoints.
    #
    #   Required in the API payload. Wire name: `key`.
    #   @return [Inttegro::SecretKey]
    #
    # @!attribute [r] usage
    #   Value of the `usage` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `usage`.
    #   @return [Inttegro::SecretKey::UsagePage]
    class Usage < T::Struct
      const :key, Inttegro::SecretKey
      const :usage, Inttegro::SecretKey::UsagePage
    end
  end
end
