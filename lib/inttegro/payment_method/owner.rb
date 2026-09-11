# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "owner_address"

module Inttegro
  class PaymentMethod
    # Owner identity captured during tokenization when provided
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] address
    #   Postal address for the owner when available
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `address`.
    #   @return [Inttegro::PaymentMethod::OwnerAddress, nil]
    #
    # @!attribute [r] name
    #   Owner full legal name
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    class Owner < T::Struct
      const :address, T.nilable(Inttegro::PaymentMethod::OwnerAddress), default: nil
      const :name, String
    end
  end
end
