# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Effective lifecycle state derived from expiry, cancellation, and single-use order creation
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `active`.
        # @return [Inttegro::PurchaseIntent::Status]
        ACTIVE = new("active")
        # Serialized wire value: `expired`.
        # @return [Inttegro::PurchaseIntent::Status]
        EXPIRED = new("expired")
        # Serialized wire value: `inactive`.
        # @return [Inttegro::PurchaseIntent::Status]
        INACTIVE = new("inactive")
        # Serialized wire value: `used`.
        # @return [Inttegro::PurchaseIntent::Status]
        USED = new("used")
      end
    end
  end
end
