# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../payment_method/data"

module Inttegro
  class Order
    # Typed representation of the pay request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_id
    #   Unique identifier of the order to pay
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    #
    # @!attribute [r] payment_method_data
    #   Payment instrument details for tokenization
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method_data`.
    #   @return [Inttegro::PaymentMethod::Data, nil]
    #
    # @!attribute [r] payment_method_id
    #   ID of a saved payment method to use for this payment
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] paid_out_of_band
    #   Set to true if payment was received outside Inttegro (cash, bank transfer, check). Marks the
    #   payment as paid offline. Mutually exclusive with payment_method_id and payment_method_data.
    #   Defaults to false.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `paid_out_of_band`.
    #   @return [Boolean, nil]
    class PayRequest < T::Struct
      const :order_id, String
      const :payment_method_data, T.nilable(Inttegro::PaymentMethod::Data), default: nil
      const :payment_method_id, T.nilable(String), default: nil
      const :paid_out_of_band, T.nilable(T::Boolean), default: nil
    end
  end
end
