# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Postal address for the owner when available
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] city
    #   City or locality
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `city`.
    #   @return [String, nil]
    #
    # @!attribute [r] country
    #   Two-letter ISO country code
    #
    #   Required in the API payload. Wire name: `country`.
    #   @return [String]
    #
    # @!attribute [r] line_1
    #   First line of the street address
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line_1`.
    #   @return [String, nil]
    #
    # @!attribute [r] line_2
    #   Second line of the street address
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line_2`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Recipient name at this address, if different from owner name
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] phone_number
    #   Phone number for this address
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `phone_number`.
    #   @return [String, nil]
    #
    # @!attribute [r] post_code
    #   Postal or ZIP code
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `post_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] region
    #   Region, state, or province
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `region`.
    #   @return [String, nil]
    class OwnerAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, String
      const :line_1, T.nilable(String), default: nil
      const :line_2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end
  end
end
