# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "pay_request_payment_method_data"

module Inttegro
  module Checkout
    # Typed representation of the pay request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_id
    #   The finalized Order to pay.
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    #
    # @!attribute [r] payment_method_id
    #   A saved payment method owned by the Order's immutable customer. Mutually exclusive with
    #   `payment_method_data`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] payment_method_data
    #   New payment method details supplied by the payer. Mutually exclusive with
    #   `payment_method_id`. Shipping details are not accepted here because checkout cannot change
    #   the Order's shipping address.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method_data`.
    #   @return [Inttegro::Checkout::PayRequestPaymentMethodData, nil]
    #
    # @!attribute [r] save_payment_method
    #   Save a newly supplied payment method to the Order's customer. When true,
    #   `payment_method_data.billing_details` is required.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `save_payment_method`.
    #   @return [Boolean, nil]
    class PayRequest < T::Struct
      const :order_id, String
      const :payment_method_id, T.nilable(String), default: nil
      const :payment_method_data, T.nilable(Inttegro::Checkout::PayRequestPaymentMethodData), default: nil
      const :save_payment_method, T.nilable(T::Boolean), default: nil
    end
  end
end
