# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Customer
    # Typed representation of the lookup request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] customer_id
    #   The customer identifier (with or without cu_ prefix)
    #
    #   Required in the API payload. Wire name: `customer_id`.
    #   @return [String]
    class LookupRequest < T::Struct
      const :customer_id, String
    end
  end
end
