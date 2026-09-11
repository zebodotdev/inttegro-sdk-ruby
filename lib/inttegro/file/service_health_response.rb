# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # Typed representation of the service health response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] service
    #   Value of the `service` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `service`.
    #   @return [String]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [String]
    #
    # @!attribute [r] environment
    #   Value of the `environment` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `environment`.
    #   @return [String]
    #
    # @!attribute [r] checked_at
    #   Value of the `checked_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `checked_at`.
    #   @return [Time]
    class ServiceHealthResponse < T::Struct
      const :service, String
      const :status, String
      const :environment, String
      const :checked_at, Time
    end
  end
end
