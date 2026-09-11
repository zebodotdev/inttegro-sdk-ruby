# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "mobile_money_data"
require_relative "pay_request_payment_method_data_type"
require_relative "payment_method_data_billing_details"

module Inttegro
  module Checkout
    # New payment method details supplied by the payer. Mutually exclusive with
    # `payment_method_id`. Shipping details are not accepted here because checkout cannot change
    # the Order's shipping address.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Checkout::PayRequestPaymentMethodDataType]
    #
    # @!attribute [r] mobile_money
    #   Value of the `mobile_money` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `mobile_money`.
    #   @return [Inttegro::Checkout::MobileMoneyData]
    #
    # @!attribute [r] billing_details
    #   Billing details for this new payment method. They do not replace the Order customer's
    #   identity or the Order's shipping address.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `billing_details`.
    #   @return [Inttegro::Checkout::PaymentMethodDataBillingDetails, nil]
    class PayRequestPaymentMethodData < T::Struct
      const :type, Inttegro::Checkout::PayRequestPaymentMethodDataType
      const :mobile_money, Inttegro::Checkout::MobileMoneyData
      const :billing_details, T.nilable(Inttegro::Checkout::PaymentMethodDataBillingDetails), default: nil
    end
  end
end
