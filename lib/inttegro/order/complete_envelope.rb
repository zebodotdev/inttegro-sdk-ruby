# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "order"

module Inttegro
  class Order
    # Typed representation of the complete envelope object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order
    #   Complete order record with line items, customer details, payment state, and fulfillment
    #   information
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `order`.
    #   @return [Inttegro::Order, nil]
    class CompleteEnvelope < T::Struct
      const :order, T.nilable(Inttegro::Order), default: nil
    end
  end
end
