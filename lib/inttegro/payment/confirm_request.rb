# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Typed representation of the confirm request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_id
    #   Unique identifier of the order
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    #
    # @!attribute [r] payment_id
    #   Unique identifier of the payment being confirmed
    #
    #   Required in the API payload. Wire name: `payment_id`.
    #   @return [String]
    #
    # @!attribute [r] confirmation_id
    #   Unique identifier of the confirmation challenge
    #
    #   Required in the API payload. Wire name: `confirmation_id`.
    #   @return [String]
    #
    # @!attribute [r] token
    #   Verification token (OTP) sent to customer
    #
    #   Required in the API payload. Wire name: `token`.
    #   @return [String]
    class ConfirmRequest < T::Struct
      const :order_id, String
      const :payment_id, String
      const :confirmation_id, String
      const :token, String
    end
  end
end
