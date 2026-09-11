# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Price
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] page_number
    #   Page index to fetch. Omit it or send 0 to request page 1; otherwise use 1 through 10.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_number`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] page_size
    #   Number of prices per page (1-256)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] product_id
    #   Optional product ID to scope the page to a single product
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `product_id`.
    #   @return [String, nil]
    class PageRequest < T::Struct
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
      const :product_id, T.nilable(String), default: nil
    end
  end
end
