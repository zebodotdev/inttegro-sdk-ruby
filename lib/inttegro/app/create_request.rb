# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "create_request_relationship_policy"

module Inttegro
  class Application
    # Typed representation of the create request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Display name for the application.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] alias
    #   Optional short name for the application.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `alias`.
    #   @return [String, nil]
    #
    # @!attribute [r] description
    #   Optional application description.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] legal_entity_type
    #   Caller-defined legal-entity label. Common values are `government`, `non_profit`, `business`,
    #   and `individual`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `legal_entity_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] placement_parent_application_id
    #   Optional application under which the new app should be placed.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `placement_parent_application_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] relationship_policy
    #   Optional direct-placement relationship policy. Omitted values default to parent management
    #   and child credentials.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `relationship_policy`.
    #   @return [Inttegro::Application::CreateRequestRelationshipPolicy, nil]
    class CreateRequest < T::Struct
      const :name, String
      const :alias, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :legal_entity_type, T.nilable(String), default: nil
      const :placement_parent_application_id, T.nilable(String), default: nil
      const :relationship_policy, T.nilable(Inttegro::Application::CreateRequestRelationshipPolicy), default: nil
    end
  end
end
