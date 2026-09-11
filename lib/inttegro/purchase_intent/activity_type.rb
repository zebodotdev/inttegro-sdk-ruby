# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # String-backed values accepted by the Inttegro API for
    # Inttegro::PurchaseIntent::ActivityType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class ActivityType < T::Enum
      enums do
        # Serialized wire value: `expired_viewed`.
        # @return [Inttegro::PurchaseIntent::ActivityType]
        EXPIRED_VIEWED = new("expired_viewed")
        # Serialized wire value: `order_created`.
        # @return [Inttegro::PurchaseIntent::ActivityType]
        ORDER_CREATED = new("order_created")
        # Serialized wire value: `payment_failed`.
        # @return [Inttegro::PurchaseIntent::ActivityType]
        PAYMENT_FAILED = new("payment_failed")
        # Serialized wire value: `payment_started`.
        # @return [Inttegro::PurchaseIntent::ActivityType]
        PAYMENT_STARTED = new("payment_started")
        # Serialized wire value: `viewed`.
        # @return [Inttegro::PurchaseIntent::ActivityType]
        VIEWED = new("viewed")
      end
    end
  end
end
