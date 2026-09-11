# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Application
    # String-backed values accepted by the Inttegro API for
    # Inttegro::Application::RelationshipKind.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class RelationshipKind < T::Enum
      enums do
        # Serialized wire value: `placement`.
        # @return [Inttegro::Application::RelationshipKind]
        PLACEMENT = new("placement")
      end
    end
  end
end
