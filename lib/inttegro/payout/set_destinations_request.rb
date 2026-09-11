# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payout
    # Typed representation of the set destinations request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] destinations
    #   Currency-to-financial-account destination assignments.
    #
    #   Required in the API payload. Wire name: `destinations`.
    #   @return [Hash{String => String}]
    class SetDestinationsRequest < T::Struct
      const :destinations, T::Hash[String, String]
    end
  end
end
