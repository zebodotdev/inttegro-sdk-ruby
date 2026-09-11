# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "refund"

module Inttegro
  class Refund
    # Typed representation of the response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] refund
    #   Value of the `refund` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `refund`.
    #   @return [Inttegro::Refund]
    class Response < T::Struct
      const :refund, Inttegro::Refund
    end
  end
end
