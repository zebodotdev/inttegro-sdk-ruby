# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "error_payload"

module Inttegro
  module Shared
    # Typed representation of the error envelope object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] error
    #   Standard error response structure returned by all API endpoints. Provides machine-readable
    #   codes, human-readable messages, and actionable guidance for resolution.
    #
    #   Required in the API payload. Wire name: `error`.
    #   @return [Inttegro::Shared::ErrorPayload]
    class ErrorEnvelope < T::Struct
      const :error, Inttegro::Shared::ErrorPayload
    end
  end
end
