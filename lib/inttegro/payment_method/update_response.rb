# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "payment_method"

module Inttegro
  class PaymentMethod
    # Typed representation of the update response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] payment_method
    #   A tokenized payment instrument tied to a customer
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `payment_method`.
    #   @return [Inttegro::PaymentMethod, nil]
    class UpdateResponse < T::Struct
      const :payment_method, T.nilable(Inttegro::PaymentMethod), default: nil
    end
  end
end
