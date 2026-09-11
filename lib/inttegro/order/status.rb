# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Current lifecycle state of the order
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `preparing`.
        # @return [Inttegro::Order::Status]
        PREPARING = new("preparing")
        # Serialized wire value: `requires_payment`.
        # @return [Inttegro::Order::Status]
        REQUIRES_PAYMENT = new("requires_payment")
        # Serialized wire value: `paid`.
        # @return [Inttegro::Order::Status]
        PAID = new("paid")
        # Serialized wire value: `completed`.
        # @return [Inttegro::Order::Status]
        COMPLETED = new("completed")
        # Serialized wire value: `canceled`.
        # @return [Inttegro::Order::Status]
        CANCELED = new("canceled")
        # Serialized wire value: `expired`.
        # @return [Inttegro::Order::Status]
        EXPIRED = new("expired")
        # Serialized wire value: `unknown`.
        # @return [Inttegro::Order::Status]
        UNKNOWN = new("unknown")
      end
    end
  end
end
