# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # String-backed values accepted by the Inttegro API for Inttegro::Payment::AttemptStatus.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class AttemptStatus < T::Enum
      enums do
        # Serialized wire value: `initiated`.
        # @return [Inttegro::Payment::AttemptStatus]
        INITIATED = new("initiated")
        # Serialized wire value: `executed`.
        # @return [Inttegro::Payment::AttemptStatus]
        EXECUTED = new("executed")
        # Serialized wire value: `succeeded`.
        # @return [Inttegro::Payment::AttemptStatus]
        SUCCEEDED = new("succeeded")
        # Serialized wire value: `canceled`.
        # @return [Inttegro::Payment::AttemptStatus]
        CANCELED = new("canceled")
        # Serialized wire value: `expired`.
        # @return [Inttegro::Payment::AttemptStatus]
        EXPIRED = new("expired")
        # Serialized wire value: `failed`.
        # @return [Inttegro::Payment::AttemptStatus]
        FAILED = new("failed")
        # Serialized wire value: `unknown`.
        # @return [Inttegro::Payment::AttemptStatus]
        UNKNOWN = new("unknown")
      end
    end
  end
end
