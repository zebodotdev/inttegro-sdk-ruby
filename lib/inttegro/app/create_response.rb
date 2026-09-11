# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "application"

module Inttegro
  class Application
    # Typed representation of the create response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] app
    #   Value of the `app` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `app`.
    #   @return [Inttegro::Application]
    class CreateResponse < T::Struct
      const :app, Inttegro::Application
    end
  end
end
