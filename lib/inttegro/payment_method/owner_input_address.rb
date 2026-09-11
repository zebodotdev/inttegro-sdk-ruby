# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Typed representation of the owner input address object in the Inttegro API.
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
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `city`.
    #   @return [String, nil]
    #
    # @!attribute [r] country
    #   Country associated with the owner address.
    #
    #   Required in the API payload. Wire name: `country`.
    #   @return [String]
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
    # @!attribute [r] post_code
    #   Value of the `post_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `post_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] region
    #   Value of the `region` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `region`.
    #   @return [String, nil]
    class OwnerInputAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, String
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end
  end
end
