# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Refund
    # String-backed values accepted by the Inttegro API for Inttegro::Refund::Reason.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Reason < T::Enum
      enums do
        # Serialized wire value: `requested_by_customer`.
        # @return [Inttegro::Refund::Reason]
        REQUESTED_BY_CUSTOMER = new("requested_by_customer")
        # Serialized wire value: `duplicate`.
        # @return [Inttegro::Refund::Reason]
        DUPLICATE = new("duplicate")
        # Serialized wire value: `fraudulent`.
        # @return [Inttegro::Refund::Reason]
        FRAUDULENT = new("fraudulent")
        # Serialized wire value: `order_canceled`.
        # @return [Inttegro::Refund::Reason]
        ORDER_CANCELED = new("order_canceled")
        # Serialized wire value: `item_returned`.
        # @return [Inttegro::Refund::Reason]
        ITEM_RETURNED = new("item_returned")
        # Serialized wire value: `item_damaged`.
        # @return [Inttegro::Refund::Reason]
        ITEM_DAMAGED = new("item_damaged")
        # Serialized wire value: `item_not_received`.
        # @return [Inttegro::Refund::Reason]
        ITEM_NOT_RECEIVED = new("item_not_received")
        # Serialized wire value: `item_not_as_described`.
        # @return [Inttegro::Refund::Reason]
        ITEM_NOT_AS_DESCRIBED = new("item_not_as_described")
        # Serialized wire value: `custom`.
        # @return [Inttegro::Refund::Reason]
        CUSTOM = new("custom")
      end
    end
  end
end
