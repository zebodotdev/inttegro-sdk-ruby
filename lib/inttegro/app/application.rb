# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "relationship"
require_relative "secret_key"

module Inttegro
  # Typed representation of the application object in the Inttegro API.
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] id
  #   Value of the `id` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] name
  #   Value of the `name` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `name`.
  #   @return [String]
  #
  # @!attribute [r] alias
  #   Value of the `alias` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `alias`.
  #   @return [String, nil]
  #
  # @!attribute [r] description
  #   Value of the `description` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
  #   @return [String, nil]
  #
  # @!attribute [r] created_at
  #   Value of the `created_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `created_at`.
  #   @return [Time]
  #
  # @!attribute [r] secret_key
  #   Value of the `secret_key` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `secret_key`.
  #   @return [Inttegro::Application::SecretKey, nil]
  #
  # @!attribute [r] relationship
  #   Relationship receipt for the created child app.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `relationship`.
  #   @return [Inttegro::Application::Relationship, nil]
  class Application
    const :id, String
    const :name, String
    const :alias, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :created_at, Time
    const :secret_key, T.nilable(Inttegro::Application::SecretKey), default: nil
    const :relationship, T.nilable(Inttegro::Application::Relationship), default: nil
  end
end
