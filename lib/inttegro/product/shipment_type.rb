# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Product
    # String-backed values accepted by the Inttegro API for Inttegro::Product::ShipmentType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class ShipmentType < T::Enum
      enums do
        # Serialized wire value: `delivery`.
        # @return [Inttegro::Product::ShipmentType]
        DELIVERY = new("delivery")
        # Serialized wire value: `download`.
        # @return [Inttegro::Product::ShipmentType]
        DOWNLOAD = new("download")
        # Serialized wire value: `render`.
        # @return [Inttegro::Product::ShipmentType]
        RENDER = new("render")
        # Serialized wire value: `service`.
        # @return [Inttegro::Product::ShipmentType]
        SERVICE = new("service")
        # Serialized wire value: `stream`.
        # @return [Inttegro::Product::ShipmentType]
        STREAM = new("stream")
      end
    end
  end
end
