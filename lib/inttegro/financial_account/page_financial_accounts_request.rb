# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # Typed representation of the page financial accounts request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] page_number
    #   Page number to retrieve (1-indexed)
    #
    #   Required in the API payload. Wire name: `page_number`.
    #   @return [Integer]
    #
    # @!attribute [r] page_size
    #   Number of accounts per page (defaults to 256)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_size`.
    #   @return [Integer, nil]
    class PageFinancialAccountsRequest < T::Struct
      const :page_number, Integer
      const :page_size, T.nilable(Integer), default: nil
    end
  end
end
