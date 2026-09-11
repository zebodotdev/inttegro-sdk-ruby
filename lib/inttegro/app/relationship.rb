# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "relationship_kind"
require_relative "relationship_policy"
require_relative "relationship_status"

module Inttegro
  class Application
    # Relationship receipt for the created child app.
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
    # @!attribute [r] kind
    #   Value of the `kind` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `kind`.
    #   @return [Inttegro::Application::RelationshipKind]
    #
    # @!attribute [r] policy_version
    #   Value of the `policy_version` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `policy_version`.
    #   @return [String]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [Inttegro::Application::RelationshipStatus]
    #
    # @!attribute [r] actor_app_id
    #   Value of the `actor_app_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `actor_app_id`.
    #   @return [String]
    #
    # @!attribute [r] creator_app_id
    #   Value of the `creator_app_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `creator_app_id`.
    #   @return [String]
    #
    # @!attribute [r] placement_parent_app_id
    #   Value of the `placement_parent_app_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `placement_parent_app_id`.
    #   @return [String]
    #
    # @!attribute [r] subject_app_id
    #   Value of the `subject_app_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `subject_app_id`.
    #   @return [String]
    #
    # @!attribute [r] child_app_id
    #   Value of the `child_app_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `child_app_id`.
    #   @return [String]
    #
    # @!attribute [r] child_standing
    #   Value of the `child_standing` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `child_standing`.
    #   @return [String]
    #
    # @!attribute [r] relationship_policy
    #   Value of the `relationship_policy` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `relationship_policy`.
    #   @return [Inttegro::Application::RelationshipPolicy]
    #
    # @!attribute [r] retained_creator_authority_exists
    #   Value of the `retained_creator_authority_exists` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `retained_creator_authority_exists`.
    #   @return [Boolean]
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    class Relationship < T::Struct
      const :id, String
      const :kind, Inttegro::Application::RelationshipKind
      const :policy_version, String
      const :status, Inttegro::Application::RelationshipStatus
      const :actor_app_id, String
      const :creator_app_id, String
      const :placement_parent_app_id, String
      const :subject_app_id, String
      const :child_app_id, String
      const :child_standing, String
      const :relationship_policy, Inttegro::Application::RelationshipPolicy
      const :retained_creator_authority_exists, T::Boolean
      const :created_at, Time
    end
  end
end
