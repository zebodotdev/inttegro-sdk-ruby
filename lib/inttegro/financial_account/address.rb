# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Typed representation of the address object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] city
    #   Value of the `city` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `city`.
    #   @return [String]
    #
    # @!attribute [r] country
    #   Value of the `country` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `country`.
    #   @return [String]
    #
    # @!attribute [r] line_1
    #   Value of the `line_1` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `line_1`.
    #   @return [String]
    #
    # @!attribute [r] line_2
    #   Value of the `line_2` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `line_2`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] phone
    #   Value of the `phone` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `phone`.
    #   @return [String, nil]
    #
    # @!attribute [r] post_code
    #   Value of the `post_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `post_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] region
    #   Value of the `region` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `region`.
    #   @return [String]
    class Address < T::Struct
      const :city, String
      const :country, String
      const :line_1, String
      const :line_2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, String
    end
  end
end
