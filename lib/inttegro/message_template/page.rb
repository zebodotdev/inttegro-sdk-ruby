# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "message_template"

module Inttegro
  class MessageTemplate
    # Typed representation of the page object in the Inttegro API.
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
    #   @return [Integer]
    #
    # @!attribute [r] size
    #   Number of templates returned in this page after filters are applied.
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    #
    # @!attribute [r] message_templates
    #   Value of the `message_templates` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `message_templates`.
    #   @return [Array<Inttegro::MessageTemplate>]
    class Page < T::Struct
      const :number, Integer
      const :size, Integer
      const :message_templates, T::Array[Inttegro::MessageTemplate]
    end
  end
end
