# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # Typed representation of the sms content object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] message_template
    #   SMS body template.
    #
    #   Required in the API payload. Wire name: `message_template`.
    #   @return [String]
    class SMSContent < T::Struct
      const :message_template, String
    end
  end
end
