# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payout
    # Current payout lifecycle state
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `initialized`.
        # @return [Inttegro::Payout::Status]
        INITIALIZED = new("initialized")
        # Serialized wire value: `scheduled`.
        # @return [Inttegro::Payout::Status]
        SCHEDULED = new("scheduled")
        # Serialized wire value: `processing`.
        # @return [Inttegro::Payout::Status]
        PROCESSING = new("processing")
        # Serialized wire value: `executing`.
        # @return [Inttegro::Payout::Status]
        EXECUTING = new("executing")
        # Serialized wire value: `succeeded`.
        # @return [Inttegro::Payout::Status]
        SUCCEEDED = new("succeeded")
        # Serialized wire value: `invalid`.
        # @return [Inttegro::Payout::Status]
        INVALID = new("invalid")
        # Serialized wire value: `canceled`.
        # @return [Inttegro::Payout::Status]
        CANCELED = new("canceled")
      end
    end
  end
end
