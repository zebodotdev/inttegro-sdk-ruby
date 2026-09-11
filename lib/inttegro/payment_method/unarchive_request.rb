# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Typed representation of the unarchive request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] payment_method_id
    #   ID of the payment method to unarchive
    #
    #   Required in the API payload. Wire name: `payment_method_id`.
    #   @return [String]
    class UnarchiveRequest < T::Struct
      const :payment_method_id, String
    end
  end
end
