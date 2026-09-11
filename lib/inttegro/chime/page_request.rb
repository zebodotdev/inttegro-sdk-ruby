# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # Request to retrieve a page of chimes
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] customer_id
    #   Restrict the page to chimes associated with this customer
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `customer_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] page_number
    #   1-based page index to fetch
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_number`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] page_size
    #   Number of chimes to return
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] recipient
    #   Restrict the page to chimes whose recipient exactly matches this phone number or email
    #   address
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `recipient`.
    #   @return [String, nil]
    class PageRequest < T::Struct
      const :customer_id, T.nilable(String), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
      const :recipient, T.nilable(String), default: nil
    end
  end
end
