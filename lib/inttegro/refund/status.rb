# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Refund
    # String-backed values accepted by the Inttegro API for Inttegro::Refund::Status.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `canceled`.
        # @return [Inttegro::Refund::Status]
        CANCELED = new("canceled")
        # Serialized wire value: `failed`.
        # @return [Inttegro::Refund::Status]
        FAILED = new("failed")
        # Serialized wire value: `pending`.
        # @return [Inttegro::Refund::Status]
        PENDING = new("pending")
        # Serialized wire value: `processing`.
        # @return [Inttegro::Refund::Status]
        PROCESSING = new("processing")
        # Serialized wire value: `succeeded`.
        # @return [Inttegro::Refund::Status]
        SUCCEEDED = new("succeeded")
      end
    end
  end
end
