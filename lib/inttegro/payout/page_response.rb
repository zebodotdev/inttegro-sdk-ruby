# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "page"

module Inttegro
  class Payout
    # Typed representation of the page response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] page
    #   Value of the `page` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page`.
    #   @return [Inttegro::Payout::Page, nil]
    class PageResponse < T::Struct
      const :page, T.nilable(Inttegro::Payout::Page), default: nil
    end
  end
end
