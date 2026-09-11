# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "variable_item_input"
require_relative "variable_type"

module Inttegro
  class MessageTemplate
    # Typed representation of the variable input object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::MessageTemplate::VariableType]
    #
    # @!attribute [r] required
    #   Value of the `required` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `required`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] default
    #   Default value used when this variable is omitted.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `default`.
    #   @return [Object, nil]
    #
    # @!attribute [r] about
    #   Optional description of the variable.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] items
    #   Field schema for array item objects. Nested arrays are not supported.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `items`.
    #   @return [Array<Inttegro::MessageTemplate::VariableItemInput>, nil]
    class VariableInput < T::Struct
      const :name, String
      const :type, Inttegro::MessageTemplate::VariableType
      const :required, T.nilable(T::Boolean), default: nil
      const :default, T.nilable(Object), default: nil
      const :about, T.nilable(String), default: nil
      const :items, T.nilable(T::Array[Inttegro::MessageTemplate::VariableItemInput]), default: nil
    end
  end
end
