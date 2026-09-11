# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # String-backed values accepted by the Inttegro API for
    # Inttegro::MessageTemplate::VariableType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class VariableType < T::Enum
      enums do
        # Serialized wire value: `string`.
        # @return [Inttegro::MessageTemplate::VariableType]
        STRING = new("string")
        # Serialized wire value: `number`.
        # @return [Inttegro::MessageTemplate::VariableType]
        NUMBER = new("number")
        # Serialized wire value: `integer`.
        # @return [Inttegro::MessageTemplate::VariableType]
        INTEGER = new("integer")
        # Serialized wire value: `boolean`.
        # @return [Inttegro::MessageTemplate::VariableType]
        BOOLEAN = new("boolean")
        # Serialized wire value: `url`.
        # @return [Inttegro::MessageTemplate::VariableType]
        URL = new("url")
        # Serialized wire value: `email`.
        # @return [Inttegro::MessageTemplate::VariableType]
        EMAIL = new("email")
        # Serialized wire value: `phone`.
        # @return [Inttegro::MessageTemplate::VariableType]
        PHONE = new("phone")
        # Serialized wire value: `date`.
        # @return [Inttegro::MessageTemplate::VariableType]
        DATE = new("date")
        # Serialized wire value: `datetime`.
        # @return [Inttegro::MessageTemplate::VariableType]
        DATETIME = new("datetime")
        # Serialized wire value: `array`.
        # @return [Inttegro::MessageTemplate::VariableType]
        ARRAY = new("array")
      end
    end
  end
end
