# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Checkout
    # String-backed values accepted by the Inttegro API for
    # Inttegro::Checkout::MobileMoneyDataNetwork.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class MobileMoneyDataNetwork < T::Enum
      enums do
        # Serialized wire value: `mtn`.
        # @return [Inttegro::Checkout::MobileMoneyDataNetwork]
        MTN = new("mtn")
        # Serialized wire value: `vodafone`.
        # @return [Inttegro::Checkout::MobileMoneyDataNetwork]
        VODAFONE = new("vodafone")
        # Serialized wire value: `airtel`.
        # @return [Inttegro::Checkout::MobileMoneyDataNetwork]
        AIRTEL = new("airtel")
        # Serialized wire value: `telecel`.
        # @return [Inttegro::Checkout::MobileMoneyDataNetwork]
        TELECEL = new("telecel")
      end
    end
  end
end
