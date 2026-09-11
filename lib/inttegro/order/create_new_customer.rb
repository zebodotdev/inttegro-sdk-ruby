# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../customer/data"
require_relative "../payment_method/data"
require_relative "../shared/billing_details"
require_relative "../shared/invoice_settings"
require_relative "../shared/line_item"
require_relative "../shared/shipping"
require_relative "create_new_customer_checkout_settings"
require_relative "create_new_customer_request_meta"
require_relative "payout_settings_request"

module Inttegro
  class Order
    # Typed representation of the create new customer object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] customer_data
    #   Value of the `customer_data` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `customer_data`.
    #   @return [Inttegro::Customer::Data]
    #
    # @!attribute [r] payment_method_data
    #   New payment instrument details to use when executing payment for the order.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method_data`.
    #   @return [Inttegro::PaymentMethod::Data, nil]
    #
    # @!attribute [r] number
    #   Optional order number for reference. When omitted, Inttegro uses the generated order ID.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [String, nil]
    #
    # @!attribute [r] receipt_number
    #   Optional receipt number for downstream reconciliation. Uses the same length rules as
    #   `number`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `receipt_number`.
    #   @return [String, nil]
    #
    # @!attribute [r] statement_descriptor
    #   Optional statement descriptor shown on the customer's bank statement
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `statement_descriptor`.
    #   @return [String, nil]
    #
    # @!attribute [r] statement_descriptor_prefix
    #   Optional static prefix used to build the statement descriptor as `prefix*order_id`. Mutually
    #   exclusive with `statement_descriptor`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `statement_descriptor_prefix`.
    #   @return [String, nil]
    #
    # @!attribute [r] execute_payment
    #   Whether to execute payment immediately after order creation
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `execute_payment`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] finalize
    #   Whether to explicitly finalize the order. When true, the order is finalized regardless of
    #   payment state. When false or omitted, finalization follows default heuristics (finalize if
    #   payment is executable).
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `finalize`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] request_meta
    #   Optional metadata controlling request processing
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `request_meta`.
    #   @return [Inttegro::Order::CreateNewCustomerRequestMeta, nil]
    #
    # @!attribute [r] checkout_settings
    #   Checkout and payment flow configuration. Strongly recommended to provide both redirect_url
    #   and cancel_url for a delightful customer experience.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `checkout_settings`.
    #   @return [Inttegro::Order::CreateNewCustomerCheckoutSettings, nil]
    #
    # @!attribute [r] invoice_settings
    #   Order-level invoice rendering data. Pages uses this data when rendering invoice web and
    #   download views.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `invoice_settings`.
    #   @return [Inttegro::Shared::InvoiceSettings, nil]
    #
    # @!attribute [r] payout_settings
    #   Value of the `payout_settings` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payout_settings`.
    #   @return [Inttegro::Order::PayoutSettingsRequest, nil]
    #
    # @!attribute [r] line_items
    #   Items included in the order. Product line items may use inline product data, `product_id`
    #   with explicit `price`, or `product_id` with `price_id`.
    #
    #   Required in the API payload. Wire name: `line_items`.
    #   @return [Array<Inttegro::Shared::LineItem>]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] billing_details
    #   Value of the `billing_details` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `billing_details`.
    #   @return [Inttegro::Shared::BillingDetails, nil]
    #
    # @!attribute [r] shipping
    #   Value of the `shipping` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `shipping`.
    #   @return [Inttegro::Shared::Shipping, nil]
    class CreateNewCustomer < T::Struct
      const :customer_data, Inttegro::Customer::Data
      const :payment_method_data, T.nilable(Inttegro::PaymentMethod::Data), default: nil
      const :number, T.nilable(String), default: nil
      const :receipt_number, T.nilable(String), default: nil
      const :statement_descriptor, T.nilable(String), default: nil
      const :statement_descriptor_prefix, T.nilable(String), default: nil
      const :execute_payment, T.nilable(T::Boolean), default: nil
      const :finalize, T.nilable(T::Boolean), default: nil
      const :request_meta, T.nilable(Inttegro::Order::CreateNewCustomerRequestMeta), default: nil
      const :checkout_settings, T.nilable(Inttegro::Order::CreateNewCustomerCheckoutSettings), default: nil
      const :invoice_settings, T.nilable(Inttegro::Shared::InvoiceSettings), default: nil
      const :payout_settings, T.nilable(Inttegro::Order::PayoutSettingsRequest), default: nil
      const :line_items, T::Array[Inttegro::Shared::LineItem]
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :billing_details, T.nilable(Inttegro::Shared::BillingDetails), default: nil
      const :shipping, T.nilable(Inttegro::Shared::Shipping), default: nil
    end
  end
end
