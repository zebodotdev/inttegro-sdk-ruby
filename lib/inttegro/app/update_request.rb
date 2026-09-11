# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Application
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Display name for the application. Cannot be empty.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] alias
    #   Short name for the application. Use an empty string to clear it.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `alias`.
    #   @return [String, nil]
    #
    # @!attribute [r] description
    #   Application description. Use an empty string to clear it.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] legal_entity_type
    #   Caller-defined legal-entity label. Send an empty string to clear it.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `legal_entity_type`.
    #   @return [String, nil]
    class UpdateRequest < T::Struct
      const :name, T.nilable(String), default: nil
      const :alias, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :legal_entity_type, T.nilable(String), default: nil
    end
  end
end
