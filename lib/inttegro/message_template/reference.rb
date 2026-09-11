# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "variables"

module Inttegro
  class MessageTemplate
    # Typed representation of the reference object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] template_id
    #   API-generated message template id.
    #
    #   Required in the API payload. Wire name: `template_id`.
    #   @return [String]
    #
    # @!attribute [r] variables
    #   Variable values used when rendering a template.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `variables`.
    #   @return [Inttegro::MessageTemplate::Variables, nil]
    class Reference < T::Struct
      const :template_id, String
      const :variables, T.nilable(Inttegro::MessageTemplate::Variables), default: nil
    end
  end
end
