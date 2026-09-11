# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "variable_item_type"

module Inttegro
  class MessageTemplate
    # Typed representation of the variable item input object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] about
    #   Value of the `about` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] default
    #   Value of the `default` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `default`.
    #   @return [Object, nil]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] required
    #   Value of the `required` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `required`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::MessageTemplate::VariableItemType]
    class VariableItemInput < T::Struct
      const :about, T.nilable(String), default: nil
      const :default, T.nilable(Object), default: nil
      const :name, String
      const :required, T.nilable(T::Boolean), default: nil
      const :type, Inttegro::MessageTemplate::VariableItemType
    end
  end
end
