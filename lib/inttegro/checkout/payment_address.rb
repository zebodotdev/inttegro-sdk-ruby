# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Checkout
    # Typed representation of the payment address object in the Inttegro API.
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
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] phone_number
    #   Value of the `phone_number` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `phone_number`.
    #   @return [String, nil]
    #
    # @!attribute [r] line1
    #   Value of the `line1` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line1`.
    #   @return [String, nil]
    #
    # @!attribute [r] line2
    #   Value of the `line2` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line2`.
    #   @return [String, nil]
    #
    # @!attribute [r] city
    #   Value of the `city` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `city`.
    #   @return [String, nil]
    #
    # @!attribute [r] region
    #   Value of the `region` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `region`.
    #   @return [String, nil]
    #
    # @!attribute [r] post_code
    #   Value of the `post_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `post_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] country
    #   ISO 3166-1 alpha-2 country code.
    #
    #   Required in the API payload. Wire name: `country`.
    #   @return [String]
    class PaymentAddress < T::Struct
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :city, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :country, String
    end
  end
end
