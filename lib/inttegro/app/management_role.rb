# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Application
    # Who can manage the child app and its resources through this relationship.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class ManagementRole < T::Enum
      enums do
        # Serialized wire value: `parent`.
        # @return [Inttegro::Application::ManagementRole]
        PARENT = new("parent")
        # Serialized wire value: `child`.
        # @return [Inttegro::Application::ManagementRole]
        CHILD = new("child")
      end
    end
  end
end
