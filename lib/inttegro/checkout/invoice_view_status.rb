# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Checkout
    # String-backed values accepted by the Inttegro API for Inttegro::Checkout::InvoiceViewStatus.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class InvoiceViewStatus < T::Enum
      enums do
        # Serialized wire value: `draft`.
        # @return [Inttegro::Checkout::InvoiceViewStatus]
        DRAFT = new("draft")
        # Serialized wire value: `requires_payment`.
        # @return [Inttegro::Checkout::InvoiceViewStatus]
        REQUIRES_PAYMENT = new("requires_payment")
        # Serialized wire value: `overdue`.
        # @return [Inttegro::Checkout::InvoiceViewStatus]
        OVERDUE = new("overdue")
        # Serialized wire value: `paid`.
        # @return [Inttegro::Checkout::InvoiceViewStatus]
        PAID = new("paid")
        # Serialized wire value: `expired`.
        # @return [Inttegro::Checkout::InvoiceViewStatus]
        EXPIRED = new("expired")
        # Serialized wire value: `canceled`.
        # @return [Inttegro::Checkout::InvoiceViewStatus]
        CANCELED = new("canceled")
      end
    end
  end
end
