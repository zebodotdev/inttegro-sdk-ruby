# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "delivery"
require_relative "download"
require_relative "render"
require_relative "service"
require_relative "shipment_type"
require_relative "stream"

module Inttegro
  class Product
    # Typed representation of the shipment object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Product::ShipmentType]
    #
    # @!attribute [r] delivery
    #   Delivery fulfillment marker.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `delivery`.
    #   @return [Inttegro::Product::Delivery, nil]
    #
    # @!attribute [r] download
    #   Download fulfillment marker.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `download`.
    #   @return [Inttegro::Product::Download, nil]
    #
    # @!attribute [r] render
    #   Rendered fulfillment marker.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `render`.
    #   @return [Inttegro::Product::Render, nil]
    #
    # @!attribute [r] service
    #   Service fulfillment marker.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `service`.
    #   @return [Inttegro::Product::Service, nil]
    #
    # @!attribute [r] stream
    #   Streaming fulfillment marker.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `stream`.
    #   @return [Inttegro::Product::Stream, nil]
    class Shipment < T::Struct
      const :type, Inttegro::Product::ShipmentType
      const :delivery, T.nilable(Inttegro::Product::Delivery), default: nil
      const :download, T.nilable(Inttegro::Product::Download), default: nil
      const :render, T.nilable(Inttegro::Product::Render), default: nil
      const :service, T.nilable(Inttegro::Product::Service), default: nil
      const :stream, T.nilable(Inttegro::Product::Stream), default: nil
    end
  end
end
