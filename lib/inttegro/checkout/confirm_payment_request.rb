# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Checkout
    # Typed representation of the confirm payment request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_id
    #   Value of the `order_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    #
    # @!attribute [r] payment_id
    #   Optional payment identifier when already known by the client.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] confirmation_id
    #   Optional confirmation attempt identifier.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `confirmation_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] token
    #   Payer confirmation token.
    #
    #   Required in the API payload. Wire name: `token`.
    #   @return [String]
    class ConfirmPaymentRequest < T::Struct
      const :order_id, String
      const :payment_id, T.nilable(String), default: nil
      const :confirmation_id, T.nilable(String), default: nil
      const :token, String
    end
  end
end
