# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "mobile_money_network"

module Inttegro
  module Shared
    # Typed representation of the mobile money object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] network
    #   Mobile money service provider
    #
    #   Required in the API payload. Wire name: `network`.
    #   @return [Inttegro::Shared::MobileMoneyNetwork]
    #
    # @!attribute [r] account_number
    #   Mobile money account number
    #
    #   Required in the API payload. Wire name: `account_number`.
    #   @return [String]
    class MobileMoney < T::Struct
      const :network, Inttegro::Shared::MobileMoneyNetwork
      const :account_number, String
    end
  end
end
