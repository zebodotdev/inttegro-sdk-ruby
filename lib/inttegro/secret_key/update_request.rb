# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class SecretKey
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] label
    #   Human-readable label for the secret key. Send an empty string to clear the label.
    #
    #   Required in the API payload. Wire name: `label`.
    #   @return [String]
    #
    # @!attribute [r] secret_key_id
    #   Secret key identifier to update.
    #
    #   Required in the API payload. Wire name: `secret_key_id`.
    #   @return [String]
    class UpdateRequest < T::Struct
      const :label, String
      const :secret_key_id, String
    end
  end
end
