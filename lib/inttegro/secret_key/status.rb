# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class SecretKey
    # String-backed values accepted by the Inttegro API for Inttegro::SecretKey::Status.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `active`.
        # @return [Inttegro::SecretKey::Status]
        ACTIVE = new("active")
        # Serialized wire value: `revoked`.
        # @return [Inttegro::SecretKey::Status]
        REVOKED = new("revoked")
        # Serialized wire value: `expired`.
        # @return [Inttegro::SecretKey::Status]
        EXPIRED = new("expired")
      end
    end
  end
end
