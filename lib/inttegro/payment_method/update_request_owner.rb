# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "update_request_owner_address"

module Inttegro
  class PaymentMethod
    # Owner details to patch onto the payment method.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Full legal name of the account holder.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] address
    #   Postal address for the payment method owner.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `address`.
    #   @return [Inttegro::PaymentMethod::UpdateRequestOwnerAddress, nil]
    class UpdateRequestOwner < T::Struct
      const :name, T.nilable(String), default: nil
      const :address, T.nilable(Inttegro::PaymentMethod::UpdateRequestOwnerAddress), default: nil
    end
  end
end
