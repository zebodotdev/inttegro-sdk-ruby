# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "invoice_view"
require_relative "order_checkout_settings"
require_relative "order_created_from"
require_relative "order_customer"
require_relative "order_line_item_group"
require_relative "order_payment"
require_relative "order_status"

module Inttegro
  module Checkout
    # Current checkout projection. Its existing fields are published unchanged for the initial
    # mobile SDK contract and may be narrowed in a future contract revision.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [String, nil]
    #
    # @!attribute [r] receipt_number
    #   Value of the `receipt_number` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `receipt_number`.
    #   @return [String, nil]
    #
    # @!attribute [r] reference
    #   Value of the `reference` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [Inttegro::Checkout::OrderStatus]
    #
    # @!attribute [r] initiated_at
    #   Value of the `initiated_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `initiated_at`.
    #   @return [Time]
    #
    # @!attribute [r] sealed_at
    #   Value of the `sealed_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sealed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] completed_at
    #   Value of the `completed_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `completed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] paid_at
    #   Value of the `paid_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `paid_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] canceled_at
    #   Value of the `canceled_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `canceled_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] expires_at
    #   Value of the `expires_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] payment_due_at
    #   Value of the `payment_due_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_due_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] checkout_settings
    #   Value of the `checkout_settings` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `checkout_settings`.
    #   @return [Inttegro::Checkout::OrderCheckoutSettings, nil]
    #
    # @!attribute [r] line_item_group
    #   Value of the `line_item_group` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line_item_group`.
    #   @return [Inttegro::Checkout::OrderLineItemGroup, nil]
    #
    # @!attribute [r] customer
    #   Value of the `customer` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `customer`.
    #   @return [Inttegro::Checkout::OrderCustomer]
    #
    # @!attribute [r] created_from
    #   Value of the `created_from` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `created_from`.
    #   @return [Inttegro::Checkout::OrderCreatedFrom, nil]
    #
    # @!attribute [r] payment
    #   Value of the `payment` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment`.
    #   @return [Inttegro::Checkout::OrderPayment, nil]
    #
    # @!attribute [r] invoice
    #   Value of the `invoice` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `invoice`.
    #   @return [Inttegro::Checkout::InvoiceView, nil]
    class Order < T::Struct
      const :id, String
      const :number, T.nilable(String), default: nil
      const :receipt_number, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :status, Inttegro::Checkout::OrderStatus
      const :initiated_at, Time
      const :sealed_at, T.nilable(Time), default: nil
      const :completed_at, T.nilable(Time), default: nil
      const :paid_at, T.nilable(Time), default: nil
      const :canceled_at, T.nilable(Time), default: nil
      const :expires_at, T.nilable(Time), default: nil
      const :payment_due_at, T.nilable(Time), default: nil
      const :checkout_settings, T.nilable(Inttegro::Checkout::OrderCheckoutSettings), default: nil
      const :line_item_group, T.nilable(Inttegro::Checkout::OrderLineItemGroup), default: nil
      const :customer, Inttegro::Checkout::OrderCustomer
      const :created_from, T.nilable(Inttegro::Checkout::OrderCreatedFrom), default: nil
      const :payment, T.nilable(Inttegro::Checkout::OrderPayment), default: nil
      const :invoice, T.nilable(Inttegro::Checkout::InvoiceView), default: nil
    end
  end
end
