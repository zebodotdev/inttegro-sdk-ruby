# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount"

module Inttegro
  class Customer
    # Typed representation of the balance value object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] as_of
    #   Value of the `as_of` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `as_of`.
    #   @return [Time]
    #
    # @!attribute [r] available
    #   Value of the `available` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `available`.
    #   @return [Inttegro::Money::Amount]
    class BalanceValue < T::Struct
      const :as_of, Time
      const :available, Inttegro::Money::Amount
    end
  end
end
