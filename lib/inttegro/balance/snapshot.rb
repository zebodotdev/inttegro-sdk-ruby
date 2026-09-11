# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "currency_snapshot"

module Inttegro
  module Balance
    # The latest GHS balance snapshot for the application.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] ghs
    #   Value of the `ghs` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `ghs`.
    #   @return [Inttegro::Balance::CurrencySnapshot]
    class Snapshot < T::Struct
      const :ghs, Inttegro::Balance::CurrencySnapshot
    end
  end
end
