# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "result_status"

module Inttegro
  class Payment
    # Response after initiating payment
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] payment_id
    #   Unique identifier for the payment
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] order_id
    #   Associated order ID
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `order_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] status
    #   Payment status
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [Inttegro::Payment::ResultStatus, nil]
    #
    # @!attribute [r] requires_confirmation
    #   Whether payment requires token confirmation
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `requires_confirmation`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] confirmation_sent
    #   Whether confirmation token was sent to customer
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `confirmation_sent`.
    #   @return [Boolean, nil]
    class Result < T::Struct
      const :payment_id, T.nilable(String), default: nil
      const :order_id, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Payment::ResultStatus), default: nil
      const :requires_confirmation, T.nilable(T::Boolean), default: nil
      const :confirmation_sent, T.nilable(T::Boolean), default: nil
    end
  end
end
