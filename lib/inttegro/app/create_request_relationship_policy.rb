# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "credential_owner"
require_relative "management_role"

module Inttegro
  class Application
    # Optional direct-placement relationship policy. Omitted values default to parent management
    # and child credentials.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] child_standing
    #   Initial standing assigned to the child in this relationship.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `child_standing`.
    #   @return [String, nil]
    #
    # @!attribute [r] management
    #   Who can manage the child app and its resources through this relationship.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `management`.
    #   @return [Inttegro::Application::ManagementRole, nil]
    #
    # @!attribute [r] credentials
    #   Who can create, rotate, or disable the child app's API keys after creation. Defaults to
    #   child. In V1, apps/create still returns the initial child key to the caller.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `credentials`.
    #   @return [Inttegro::Application::CredentialOwner, nil]
    class CreateRequestRelationshipPolicy < T::Struct
      const :child_standing, T.nilable(String), default: nil
      const :management, T.nilable(Inttegro::Application::ManagementRole), default: nil
      const :credentials, T.nilable(Inttegro::Application::CredentialOwner), default: nil
    end
  end
end
