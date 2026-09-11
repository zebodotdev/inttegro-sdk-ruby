# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] page_number
    #   One-based page number to retrieve
    #
    #   Required in the API payload. Wire name: `page_number`.
    #   @return [Integer]
    #
    # @!attribute [r] page_size
    #   Maximum number of purchase intents to return on this page
    #
    #   Required in the API payload. Wire name: `page_size`.
    #   @return [Integer]
    class PageRequest < T::Struct
      const :page_number, Integer
      const :page_size, Integer
    end
  end
end
