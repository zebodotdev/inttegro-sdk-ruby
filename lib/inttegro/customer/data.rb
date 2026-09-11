# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Customer
    # Typed representation of the data object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Customer's full name
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] email_address
    #   Customer's email address
    #
    #   Required in the API payload. Wire name: `email_address`.
    #   @return [String]
    #
    # @!attribute [r] phone_number
    #   Customer's phone number
    #
    #   Required in the API payload. Wire name: `phone_number`.
    #   @return [String]
    #
    # @!attribute [r] reference
    #   External reference ID for the customer
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined values accepted on resource creation. Values are serialized to strings
    #   before storage.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => Object}, nil]
    class Data < T::Struct
      const :name, String
      const :email_address, String
      const :phone_number, String
      const :reference, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    end
  end
end
