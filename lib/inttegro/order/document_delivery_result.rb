# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/error_payload"
require_relative "document_delivery"
require_relative "order"

module Inttegro
  class Order
    # Response returned by deliberate order document delivery endpoints.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] delivery
    #   Delivery result for one hosted order document link.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `delivery`.
    #   @return [Inttegro::Order::DocumentDelivery, nil]
    #
    # @!attribute [r] error
    #   Standard error response structure returned by all API endpoints. Provides machine-readable
    #   codes, human-readable messages, and actionable guidance for resolution.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `error`.
    #   @return [Inttegro::Shared::ErrorPayload, nil]
    #
    # @!attribute [r] order
    #   Complete order record with line items, customer details, payment state, and fulfillment
    #   information
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `order`.
    #   @return [Inttegro::Order, nil]
    class DocumentDeliveryResult < T::Struct
      const :delivery, T.nilable(Inttegro::Order::DocumentDelivery), default: nil
      const :error, T.nilable(Inttegro::Shared::ErrorPayload), default: nil
      const :order, T.nilable(Inttegro::Order), default: nil
    end
  end
end
