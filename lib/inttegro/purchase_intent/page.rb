# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "purchase_intent"

module Inttegro
  class PurchaseIntent
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   One-based page number returned
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] purchase_intents
    #   Value of the `purchase_intents` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `purchase_intents`.
    #   @return [Array<Inttegro::PurchaseIntent>]
    #
    # @!attribute [r] size
    #   Number of purchase intents actually returned
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    class Page < T::Struct
      const :number, Integer
      const :purchase_intents, T::Array[Inttegro::PurchaseIntent]
      const :size, Integer
    end
  end
end
