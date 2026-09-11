# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Checkout
    # Typed representation of the order checkout settings object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] redirect_url
    #   Value of the `redirect_url` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `redirect_url`.
    #   @return [String, nil]
    #
    # @!attribute [r] cancel_url
    #   Value of the `cancel_url` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `cancel_url`.
    #   @return [String, nil]
    class OrderCheckoutSettings < T::Struct
      const :redirect_url, T.nilable(String), default: nil
      const :cancel_url, T.nilable(String), default: nil
    end
  end
end
