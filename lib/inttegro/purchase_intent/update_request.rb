# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "update_request_quantity"

module Inttegro
  class PurchaseIntent
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] expires_at
    #   RFC3339 expiry timestamp, including a past time for immediate expiry, or null to clear
    #   expiry
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] id
    #   Purchase intent ID to update. Send this or purchase_intent_id.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] quantity
    #   Replacement quantity bounds. Omit the object to preserve the current bounds. Within the
    #   object, min is required and omitting max removes the upper bound. When present, max must be
    #   greater than or equal to min.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `quantity`.
    #   @return [Inttegro::PurchaseIntent::UpdateRequestQuantity, nil]
    #
    # @!attribute [r] purchase_intent_id
    #   Alias for id. If both are present, this value takes precedence.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purchase_intent_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] reactivate
    #   Clears the state that prevents new purchases. For canceled Buy links this removes
    #   inactive_at. For expired Buy links this clears an existing elapsed expires_at value. It does
    #   not remove the order claim from a used single-use intent.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reactivate`.
    #   @return [Boolean, nil]
    class UpdateRequest < T::Struct
      const :expires_at, T.nilable(Time), default: nil
      const :id, T.nilable(String), default: nil
      const :quantity, T.nilable(Inttegro::PurchaseIntent::UpdateRequestQuantity), default: nil
      const :purchase_intent_id, T.nilable(String), default: nil
      const :reactivate, T.nilable(T::Boolean), default: nil
    end
  end
end
