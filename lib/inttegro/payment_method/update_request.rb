# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "update_request_owner"

module Inttegro
  class PaymentMethod
    # Typed representation of the update request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] payment_method_id
    #   ID of the payment method to update
    #
    #   Required in the API payload. Wire name: `payment_method_id`.
    #   @return [String]
    #
    # @!attribute [r] custom_data
    #   Changes to merchant-defined data. JSON null removes a key; every other JSON value is
    #   serialized to a string.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => Object}, nil]
    #
    # @!attribute [r] active
    #   Set to `true` to activate the payment method or `false` to mark it inactive.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `active`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] archived
    #   Set to `true` to archive the payment method or `false` to unarchive it.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `archived`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] owner
    #   Owner details to patch onto the payment method.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `owner`.
    #   @return [Inttegro::PaymentMethod::UpdateRequestOwner, nil]
    class UpdateRequest < T::Struct
      const :payment_method_id, String
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :active, T.nilable(T::Boolean), default: nil
      const :archived, T.nilable(T::Boolean), default: nil
      const :owner, T.nilable(Inttegro::PaymentMethod::UpdateRequestOwner), default: nil
    end
  end
end
