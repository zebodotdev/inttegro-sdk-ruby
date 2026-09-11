# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payout
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] page_number
    #   1-based page index to fetch (1-10 inclusive)
    #
    #   Required in the API payload. Wire name: `page_number`.
    #   @return [Integer]
    #
    # @!attribute [r] page_size
    #   Maximum number of payouts to return (1-256)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_size`.
    #   @return [Integer, nil]
    class PageRequest < T::Struct
      const :page_number, Integer
      const :page_size, T.nilable(Integer), default: nil
    end
  end
end
