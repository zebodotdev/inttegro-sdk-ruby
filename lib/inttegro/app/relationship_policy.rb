# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "credential_owner"
require_relative "management_role"

module Inttegro
  class Application
    # Typed representation of the relationship policy object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] child_standing
    #   Value of the `child_standing` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `child_standing`.
    #   @return [String]
    #
    # @!attribute [r] management
    #   Value of the `management` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `management`.
    #   @return [Inttegro::Application::ManagementRole]
    #
    # @!attribute [r] credentials
    #   Value of the `credentials` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `credentials`.
    #   @return [Inttegro::Application::CredentialOwner]
    class RelationshipPolicy < T::Struct
      const :child_standing, String
      const :management, Inttegro::Application::ManagementRole
      const :credentials, Inttegro::Application::CredentialOwner
    end
  end
end
