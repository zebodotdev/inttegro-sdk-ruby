# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../order/address"

module Inttegro
  class Payment
    # Typed representation of the billing details owner object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] address
    #   Value of the `address` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `address`.
    #   @return [Inttegro::Order::Address, nil]
    class BillingDetailsOwner < T::Struct
      const :name, String
      const :address, T.nilable(Inttegro::Order::Address), default: nil
    end
  end
end
