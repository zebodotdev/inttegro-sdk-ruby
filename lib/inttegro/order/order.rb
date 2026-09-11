# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../payment/payment"
require_relative "../refund/refund"
require_relative "../shared/invoice_settings"
require_relative "checkout_settings"
require_relative "created_from"
require_relative "customer"
require_relative "invoice"
require_relative "line_item_group"
require_relative "status"

module Inttegro
  # Complete order record with line items, customer details, payment state, and fulfillment
  # information
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] canceled_at
  #   When the order was canceled. Omitted otherwise.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `canceled_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] checkout_settings
  #   Checkout and payment flow configuration for this order
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `checkout_settings`.
  #   @return [Inttegro::Order::CheckoutSettings, nil]
  #
  # @!attribute [r] completed_at
  #   When the order was completed. Omitted otherwise.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `completed_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] created_from
  #   Attribution for the public resource that created this order, when available.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `created_from`.
  #   @return [Inttegro::Order::CreatedFrom, nil]
  #
  # @!attribute [r] custom_data
  #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
  #   collection rather than a raw map.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
  #   @return [Hash{String => String}, nil]
  #
  # @!attribute [r] customer
  #   Value of the `customer` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `customer`.
  #   @return [Inttegro::Order::Customer]
  #
  # @!attribute [r] expires_at
  #   When the order expires. Omitted when no expiry is set.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] id
  #   Unique identifier for this order
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] initiated_at
  #   When order processing began
  #
  #   Required in the API payload. Wire name: `initiated_at`.
  #   @return [Time]
  #
  # @!attribute [r] invoice
  #   Value of the `invoice` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `invoice`.
  #   @return [Inttegro::Order::Invoice, nil]
  #
  # @!attribute [r] number
  #   Human-readable order number
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
  #   @return [String, nil]
  #
  # @!attribute [r] receipt_number
  #   Merchant-provided receipt number, when set
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `receipt_number`.
  #   @return [String, nil]
  #
  # @!attribute [r] refunds
  #   All refunds issued for this order, newest first. Omitted when no refunds exist.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `refunds`.
  #   @return [Array<Inttegro::Refund>, nil]
  #
  # @!attribute [r] invoice_settings
  #   Order-level invoice rendering data. Pages uses this data when rendering invoice web and
  #   download views.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `invoice_settings`.
  #   @return [Inttegro::Shared::InvoiceSettings, nil]
  #
  # @!attribute [r] status
  #   Current lifecycle state of the order
  #
  #   Required in the API payload. Wire name: `status`.
  #   @return [Inttegro::Order::Status]
  #
  # @!attribute [r] sealed_at
  #   When the order was finalized and became immutable—ready for payment or fulfillment
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `sealed_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] line_item_group
  #   Cart contents and totals
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `line_item_group`.
  #   @return [Inttegro::Order::LineItemGroup, nil]
  #
  # @!attribute [r] payment
  #   Payment intent tied to this order
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment`.
  #   @return [Inttegro::Payment, nil]
  #
  # @!attribute [r] paid_at
  #   When the order became paid
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `paid_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] payment_due_at
  #   When the order payment becomes overdue
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_due_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] reference
  #   External order reference when present
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
  #   @return [String, nil]
  class Order
    const :canceled_at, T.nilable(Time), default: nil
    const :checkout_settings, T.nilable(Inttegro::Order::CheckoutSettings), default: nil
    const :completed_at, T.nilable(Time), default: nil
    const :created_from, T.nilable(Inttegro::Order::CreatedFrom), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :customer, Inttegro::Order::Customer
    const :expires_at, T.nilable(Time), default: nil
    const :id, String
    const :initiated_at, Time
    const :invoice, T.nilable(Inttegro::Order::Invoice), default: nil
    const :number, T.nilable(String), default: nil
    const :receipt_number, T.nilable(String), default: nil
    const :refunds, T.nilable(T::Array[Inttegro::Refund]), default: nil
    const :invoice_settings, T.nilable(Inttegro::Shared::InvoiceSettings), default: nil
    const :status, Inttegro::Order::Status
    const :sealed_at, T.nilable(Time), default: nil
    const :line_item_group, T.nilable(Inttegro::Order::LineItemGroup), default: nil
    const :payment, T.nilable(Inttegro::Payment), default: nil
    const :paid_at, T.nilable(Time), default: nil
    const :payment_due_at, T.nilable(Time), default: nil
    const :reference, T.nilable(String), default: nil
  end
end
