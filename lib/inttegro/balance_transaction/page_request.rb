# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class BalanceTransaction
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] page_number
    #   Page number to fetch. Use 1 for the first page; 0 is accepted but returns an empty page.
    #
    #   Required in the API payload. Wire name: `page_number`.
    #   @return [Integer]
    #
    # @!attribute [r] page_size
    #   Number of transactions per page (1-256)
    #
    #   Required in the API payload. Wire name: `page_size`.
    #   @return [Integer]
    class PageRequest < T::Struct
      const :page_number, Integer
      const :page_size, Integer
    end
  end
end
