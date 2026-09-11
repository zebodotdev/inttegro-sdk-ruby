# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Typed representation of the finalize request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] order_id
    #   Unique identifier of the order to finalize
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    class FinalizeRequest < T::Struct
      const :order_id, String
    end
  end
end
