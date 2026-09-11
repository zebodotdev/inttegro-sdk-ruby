# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # Request to look up a chime by ID
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] chime_id
    #   Unique identifier of the chime to look up
    #
    #   Required in the API payload. Wire name: `chime_id`.
    #   @return [String]
    class LookupRequest < T::Struct
      const :chime_id, String
    end
  end
end
