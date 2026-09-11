# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Application
    # Who can create, rotate, or disable the child app's API keys after creation. Defaults to
    # child. In V1, apps/create still returns the initial child key to the caller.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class CredentialOwner < T::Enum
      enums do
        # Serialized wire value: `child`.
        # @return [Inttegro::Application::CredentialOwner]
        CHILD = new("child")
        # Serialized wire value: `parent`.
        # @return [Inttegro::Application::CredentialOwner]
        PARENT = new("parent")
      end
    end
  end
end
