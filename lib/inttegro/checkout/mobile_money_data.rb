# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "mobile_money_data_network"

module Inttegro
  module Checkout
    # Typed representation of the mobile money data object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] reference
    #   Value of the `reference` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] network
    #   Value of the `network` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `network`.
    #   @return [Inttegro::Checkout::MobileMoneyDataNetwork]
    #
    # @!attribute [r] account_number
    #   Value of the `account_number` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `account_number`.
    #   @return [String]
    class MobileMoneyData < T::Struct
      const :reference, T.nilable(String), default: nil
      const :network, Inttegro::Checkout::MobileMoneyDataNetwork
      const :account_number, String
    end
  end
end
