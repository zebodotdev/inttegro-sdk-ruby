# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # String-backed values accepted by the Inttegro API for
    # Inttegro::MessageTemplate::VariableItemType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class VariableItemType < T::Enum
      enums do
        # Serialized wire value: `string`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        STRING = new("string")
        # Serialized wire value: `number`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        NUMBER = new("number")
        # Serialized wire value: `integer`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        INTEGER = new("integer")
        # Serialized wire value: `boolean`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        BOOLEAN = new("boolean")
        # Serialized wire value: `url`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        URL = new("url")
        # Serialized wire value: `email`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        EMAIL = new("email")
        # Serialized wire value: `phone`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        PHONE = new("phone")
        # Serialized wire value: `date`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        DATE = new("date")
        # Serialized wire value: `datetime`.
        # @return [Inttegro::MessageTemplate::VariableItemType]
        DATETIME = new("datetime")
      end
    end
  end
end
