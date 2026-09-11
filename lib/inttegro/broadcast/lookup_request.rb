# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Broadcast
    # Typed representation of the lookup request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] broadcast_id
    #   Value of the `broadcast_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `broadcast_id`.
    #   @return [String]
    class LookupRequest < T::Struct
      const :broadcast_id, String
    end
  end
end
