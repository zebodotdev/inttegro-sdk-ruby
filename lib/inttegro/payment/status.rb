# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Payment state
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `initiated`.
        # @return [Inttegro::Payment::Status]
        INITIATED = new("initiated")
        # Serialized wire value: `requires_action`.
        # @return [Inttegro::Payment::Status]
        REQUIRES_ACTION = new("requires_action")
        # Serialized wire value: `overdue`.
        # @return [Inttegro::Payment::Status]
        OVERDUE = new("overdue")
        # Serialized wire value: `executed`.
        # @return [Inttegro::Payment::Status]
        EXECUTED = new("executed")
        # Serialized wire value: `paid`.
        # @return [Inttegro::Payment::Status]
        PAID = new("paid")
        # Serialized wire value: `canceled`.
        # @return [Inttegro::Payment::Status]
        CANCELED = new("canceled")
        # Serialized wire value: `expired`.
        # @return [Inttegro::Payment::Status]
        EXPIRED = new("expired")
        # Serialized wire value: `failed`.
        # @return [Inttegro::Payment::Status]
        FAILED = new("failed")
        # Serialized wire value: `unknown`.
        # @return [Inttegro::Payment::Status]
        UNKNOWN = new("unknown")
      end
    end
  end
end
