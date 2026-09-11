# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "payout_settings_request_destination"

module Inttegro
  class Order
    # Typed representation of the payout settings request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] destination
    #   Value of the `destination` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `destination`.
    #   @return [Inttegro::Order::PayoutSettingsRequestDestination, nil]
    #
    # @!attribute [r] enable_fx
    #   Omit this field or set it to false. Cross-currency payouts are not currently available.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `enable_fx`.
    #   @return [Boolean, nil]
    class PayoutSettingsRequest < T::Struct
      const :destination, T.nilable(Inttegro::Order::PayoutSettingsRequestDestination), default: nil
      const :enable_fx, T.nilable(T::Boolean), default: nil
    end
  end
end
