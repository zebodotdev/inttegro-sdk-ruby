# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] page_number
    #   Zero-based page index to fetch (0-10 inclusive)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_number`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] page_size
    #   Number of orders per page (1-256)
    #
    #   Required in the API payload. Wire name: `page_size`.
    #   @return [Integer]
    #
    # @!attribute [r] customer_id
    #   When provided, restricts results to orders belonging to this customer. The customer must
    #   belong to the authenticated application.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `customer_id`.
    #   @return [String, nil]
    class PageRequest < T::Struct
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, Integer
      const :customer_id, T.nilable(String), default: nil
    end
  end
end
