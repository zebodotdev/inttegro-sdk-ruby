# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "reference"

module Inttegro
  class MessageTemplate
    # Typed representation of the render preview request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] message_template
    #   Value of the `message_template` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `message_template`.
    #   @return [Inttegro::MessageTemplate::Reference]
    class RenderPreviewRequest < T::Struct
      const :message_template, Inttegro::MessageTemplate::Reference
    end
  end
end
