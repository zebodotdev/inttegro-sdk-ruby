# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "payout_configuration_destination"

module Inttegro
  class Payment
    # Payout configuration for this payment
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] enable_fx
    #   Compatibility flag. Cross-currency payout execution is not currently available.
    #
    #   Required in the API payload. Wire name: `enable_fx`.
    #   @return [Boolean]
    #
    # @!attribute [r] destination
    #   Where the funds will be paid out
    #
    #   Required in the API payload. Wire name: `destination`.
    #   @return [Inttegro::Payment::PayoutConfigurationDestination]
    class PayoutConfiguration < T::Struct
      const :enable_fx, T::Boolean
      const :destination, Inttegro::Payment::PayoutConfigurationDestination
    end
  end
end
