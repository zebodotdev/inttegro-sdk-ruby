# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # Typed representation of the rendered sms object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] full_message
    #   Value of the `full_message` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `full_message`.
    #   @return [String]
    class RenderedSMS < T::Struct
      const :full_message, String
    end
  end
end
