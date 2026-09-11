# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] customer_id
    #   Optional customer ID to scope the page to a single customer
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `customer_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] page_number
    #   Page index to fetch. `0` is accepted and normalized to page 1; returned pages are numbered
    #   1-10.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_number`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] page_size
    #   Number of payment methods per page (1-256)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_size`.
    #   @return [Integer, nil]
    class PageRequest < T::Struct
      const :customer_id, T.nilable(String), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
    end
  end
end
