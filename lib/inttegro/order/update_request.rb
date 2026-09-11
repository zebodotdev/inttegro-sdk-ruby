# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/invoice_settings"
require_relative "../shared/line_item"
require_relative "update_request_payment_method_data"

module Inttegro
  class Order
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] clear_payment_method
    #   Clears the currently attached payment method. Mutually exclusive with `payment_method_id`
    #   and `payment_method_data`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `clear_payment_method`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] invoice_settings
    #   Order-level invoice rendering data. Pages uses this data when rendering invoice web and
    #   download views.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `invoice_settings`.
    #   @return [Inttegro::Shared::InvoiceSettings, nil]
    #
    # @!attribute [r] finalize
    #   Explicit seal decision. Set to `false` to reopen a sealed order and leave it open, or `true`
    #   to seal or reseal the order after applying the requested mutations.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `finalize`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] line_items
    #   Full replacement for the order's line items. Omit this field to keep the current line items
    #   unchanged.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line_items`.
    #   @return [Array<Inttegro::Shared::LineItem>, nil]
    #
    # @!attribute [r] number
    #   Replacement order number.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [String, nil]
    #
    # @!attribute [r] receipt_number
    #   Replacement receipt number. Once set, it cannot be unset; provide a different non-empty
    #   value to change it. No uniqueness is enforced.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `receipt_number`.
    #   @return [String, nil]
    #
    # @!attribute [r] order_id
    #   Unique identifier of the order to update.
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    #
    # @!attribute [r] payment_method_data
    #   New payment method details to tokenize and attach to the order. Currently only
    #   `mobile_money` is supported for order updates. When using inline mobile money details,
    #   include `billing_details.name` and `billing_details.address.country`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method_data`.
    #   @return [Inttegro::Order::UpdateRequestPaymentMethodData, nil]
    #
    # @!attribute [r] payment_method_id
    #   ID of a saved payment method to attach to the order. Mutually exclusive with
    #   `payment_method_data` and `clear_payment_method`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] statement_descriptor
    #   Replacement payment statement descriptor for the order's payment.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `statement_descriptor`.
    #   @return [String, nil]
    #
    # @!attribute [r] statement_descriptor_prefix
    #   Static prefix used to build the replacement descriptor as `prefix*order_id`. Mutually
    #   exclusive with `statement_descriptor`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `statement_descriptor_prefix`.
    #   @return [String, nil]
    class UpdateRequest < T::Struct
      const :clear_payment_method, T.nilable(T::Boolean), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :invoice_settings, T.nilable(Inttegro::Shared::InvoiceSettings), default: nil
      const :finalize, T.nilable(T::Boolean), default: nil
      const :line_items, T.nilable(T::Array[Inttegro::Shared::LineItem]), default: nil
      const :number, T.nilable(String), default: nil
      const :receipt_number, T.nilable(String), default: nil
      const :order_id, String
      const :payment_method_data, T.nilable(Inttegro::Order::UpdateRequestPaymentMethodData), default: nil
      const :payment_method_id, T.nilable(String), default: nil
      const :statement_descriptor, T.nilable(String), default: nil
      const :statement_descriptor_prefix, T.nilable(String), default: nil
    end
  end
end
