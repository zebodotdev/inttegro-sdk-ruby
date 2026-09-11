# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Checkout and payment flow configuration. Strongly recommended to provide both redirect_url
    # and cancel_url for a delightful customer experience.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] redirect_url
    #   URL to redirect customer after payment completion
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `redirect_url`.
    #   @return [String, nil]
    #
    # @!attribute [r] cancel_url
    #   URL to redirect customer if they cancel payment
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `cancel_url`.
    #   @return [String, nil]
    class CreateExistingCustomerCheckoutSettings < T::Struct
      const :redirect_url, T.nilable(String), default: nil
      const :cancel_url, T.nilable(String), default: nil
    end
  end
end
