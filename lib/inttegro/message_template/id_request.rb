# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # Typed representation of the id request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   API-generated message template id.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    class IDRequest < T::Struct
      const :id, String
    end
  end
end
