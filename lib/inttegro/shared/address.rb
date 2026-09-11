# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Typed representation of the address object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Recipient name
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] phone_number
    #   Contact phone number
    #
    #   Required in the API payload. Wire name: `phone_number`.
    #   @return [String]
    #
    # @!attribute [r] line1
    #   Street address line 1
    #
    #   Required in the API payload. Wire name: `line1`.
    #   @return [String]
    #
    # @!attribute [r] line2
    #   Street address line 2 (optional)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line2`.
    #   @return [String, nil]
    #
    # @!attribute [r] town
    #   City or town
    #
    #   Required in the API payload. Wire name: `town`.
    #   @return [String]
    #
    # @!attribute [r] region
    #   State, province, or region
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `region`.
    #   @return [String, nil]
    #
    # @!attribute [r] district
    #   District or area
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `district`.
    #   @return [String, nil]
    #
    # @!attribute [r] country
    #   Country name
    #
    #   Required in the API payload. Wire name: `country`.
    #   @return [String]
    #
    # @!attribute [r] post_code
    #   Postal/ZIP code
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `post_code`.
    #   @return [String, nil]
    class Address < T::Struct
      const :name, String
      const :phone_number, String
      const :line1, String
      const :line2, T.nilable(String), default: nil
      const :town, String
      const :region, T.nilable(String), default: nil
      const :district, T.nilable(String), default: nil
      const :country, String
      const :post_code, T.nilable(String), default: nil
    end
  end
end
