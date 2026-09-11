# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FileLink
    # String-backed values accepted by the Inttegro API for Inttegro::FileLink::Status.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `active`.
        # @return [Inttegro::FileLink::Status]
        ACTIVE = new("active")
        # Serialized wire value: `revoked`.
        # @return [Inttegro::FileLink::Status]
        REVOKED = new("revoked")
        # Serialized wire value: `expired`.
        # @return [Inttegro::FileLink::Status]
        EXPIRED = new("expired")
        # Serialized wire value: `disabled`.
        # @return [Inttegro::FileLink::Status]
        DISABLED = new("disabled")
      end
    end
  end
end
