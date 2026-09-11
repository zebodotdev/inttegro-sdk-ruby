# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Typed representation of the document delivery request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_id
    #   Order whose hosted invoice or receipt link should be delivered.
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    class DocumentDeliveryRequest < T::Struct
      const :order_id, String
    end
  end
end
