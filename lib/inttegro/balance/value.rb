# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Balance
    # Typed representation of the value object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] amount
    #   Amount in the currency's smallest unit
    #
    #   Required in the API payload. Wire name: `amount`.
    #   @return [Integer]
    class Value < T::Struct
      const :amount, Integer
    end
  end
end
