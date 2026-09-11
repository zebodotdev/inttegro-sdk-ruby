# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # Typed representation of the inline recipient variant1 phone object in the Inttegro API.
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
    #   @return [String]
    class InlineRecipientVariant1Phone < T::Struct
      const :number, String
    end
  end
end
