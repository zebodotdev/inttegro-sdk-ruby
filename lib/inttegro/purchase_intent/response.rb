# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "purchase_intent"

module Inttegro
  class PurchaseIntent
    # Typed representation of the response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] purchase_intent
    #   Value of the `purchase_intent` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `purchase_intent`.
    #   @return [Inttegro::PurchaseIntent]
    class Response < T::Struct
      const :purchase_intent, Inttegro::PurchaseIntent
    end
  end
end
