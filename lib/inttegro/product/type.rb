# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Product
    # Product type - determines fulfillment requirements
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Type < T::Enum
      enums do
        # Serialized wire value: `physical`.
        # @return [Inttegro::Product::Type]
        PHYSICAL = new("physical")
        # Serialized wire value: `digital`.
        # @return [Inttegro::Product::Type]
        DIGITAL = new("digital")
        # Serialized wire value: `service`.
        # @return [Inttegro::Product::Type]
        SERVICE = new("service")
        # Serialized wire value: `voucher`.
        # @return [Inttegro::Product::Type]
        VOUCHER = new("voucher")
        # Serialized wire value: `custom`.
        # @return [Inttegro::Product::Type]
        CUSTOM = new("custom")
        # Serialized wire value: `cause`.
        # @return [Inttegro::Product::Type]
        CAUSE = new("cause")
      end
    end
  end
end
