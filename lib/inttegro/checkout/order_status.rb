# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Checkout
    # String-backed values accepted by the Inttegro API for Inttegro::Checkout::OrderStatus.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class OrderStatus < T::Enum
      enums do
        # Serialized wire value: `preparing`.
        # @return [Inttegro::Checkout::OrderStatus]
        PREPARING = new("preparing")
        # Serialized wire value: `requires_payment`.
        # @return [Inttegro::Checkout::OrderStatus]
        REQUIRES_PAYMENT = new("requires_payment")
        # Serialized wire value: `completed`.
        # @return [Inttegro::Checkout::OrderStatus]
        COMPLETED = new("completed")
        # Serialized wire value: `paid`.
        # @return [Inttegro::Checkout::OrderStatus]
        PAID = new("paid")
        # Serialized wire value: `canceled`.
        # @return [Inttegro::Checkout::OrderStatus]
        CANCELED = new("canceled")
        # Serialized wire value: `expired`.
        # @return [Inttegro::Checkout::OrderStatus]
        EXPIRED = new("expired")
        # Serialized wire value: `unknown`.
        # @return [Inttegro::Checkout::OrderStatus]
        UNKNOWN = new("unknown")
      end
    end
  end
end
