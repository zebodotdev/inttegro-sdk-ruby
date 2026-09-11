# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Price
    # Typed representation of the action request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] price_id
    #   Price ID to perform the action on
    #
    #   Required in the API payload. Wire name: `price_id`.
    #   @return [String]
    class ActionRequest < T::Struct
      const :price_id, String
    end
  end
end
