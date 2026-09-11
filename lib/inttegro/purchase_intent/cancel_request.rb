# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Typed representation of the cancel request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Purchase intent ID to cancel. Send this or purchase_intent_id.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] purchase_intent_id
    #   Alias for id. If both are present, this value takes precedence.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purchase_intent_id`.
    #   @return [String, nil]
    class CancelRequest < T::Struct
      const :id, T.nilable(String), default: nil
      const :purchase_intent_id, T.nilable(String), default: nil
    end
  end
end
