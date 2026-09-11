# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Postal address for the payment method owner.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] city
    #   City or locality.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `city`.
    #   @return [String, nil]
    #
    # @!attribute [r] country
    #   Two-letter ISO country code. Required when adding a brand new owner address.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `country`.
    #   @return [String, nil]
    #
    # @!attribute [r] line1
    #   First address line.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line1`.
    #   @return [String, nil]
    #
    # @!attribute [r] line2
    #   Second address line.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line2`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Recipient name for the address, if different from owner name.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] phone_number
    #   Phone number for the address.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `phone_number`.
    #   @return [String, nil]
    #
    # @!attribute [r] post_code
    #   Postal or ZIP code.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `post_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] region
    #   Region, state, or province.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `region`.
    #   @return [String, nil]
    class UpdateRequestOwnerAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, T.nilable(String), default: nil
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end
  end
end
