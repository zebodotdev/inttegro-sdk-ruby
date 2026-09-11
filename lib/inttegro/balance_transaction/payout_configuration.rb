# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "payout_configuration_destination"

module Inttegro
  class BalanceTransaction
    # Typed representation of the payout configuration object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] enable_fx
    #   Value of the `enable_fx` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `enable_fx`.
    #   @return [Boolean]
    #
    # @!attribute [r] destination
    #   Value of the `destination` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `destination`.
    #   @return [Inttegro::BalanceTransaction::PayoutConfigurationDestination]
    class PayoutConfiguration < T::Struct
      const :enable_fx, T::Boolean
      const :destination, Inttegro::BalanceTransaction::PayoutConfigurationDestination
    end
  end
end
