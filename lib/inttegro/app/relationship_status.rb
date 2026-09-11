# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Application
    # String-backed values accepted by the Inttegro API for
    # Inttegro::Application::RelationshipStatus.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class RelationshipStatus < T::Enum
      enums do
        # Serialized wire value: `active`.
        # @return [Inttegro::Application::RelationshipStatus]
        ACTIVE = new("active")
        # Serialized wire value: `inactive`.
        # @return [Inttegro::Application::RelationshipStatus]
        INACTIVE = new("inactive")
        # Serialized wire value: `suspended`.
        # @return [Inttegro::Application::RelationshipStatus]
        SUSPENDED = new("suspended")
        # Serialized wire value: `revoked`.
        # @return [Inttegro::Application::RelationshipStatus]
        REVOKED = new("revoked")
      end
    end
  end
end
