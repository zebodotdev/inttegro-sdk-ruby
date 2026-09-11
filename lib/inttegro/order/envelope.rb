# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "order"

module Inttegro
  class Order
    # Typed representation of the envelope object in the Inttegro API.
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
    #   Required in the API payload. Wire name: `order`.
    #   @return [Inttegro::Order]
    class Envelope < T::Struct
      const :order, Inttegro::Order
    end
  end
end
