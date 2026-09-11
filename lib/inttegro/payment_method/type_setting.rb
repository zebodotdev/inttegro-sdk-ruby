# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "type"

module Inttegro
  class PaymentMethod
    # Settings for a specific payment method type
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Payment method type
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `type`.
    #   @return [Inttegro::PaymentMethod::Type, nil]
    #
    # @!attribute [r] name
    #   Human-readable name
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] description
    #   Description of this payment method
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] enabled
    #   Whether this payment type can be used
    #
    #   Required in the API payload. Wire name: `enabled`.
    #   @return [Boolean]
    #
    # @!attribute [r] confirms_use
    #   Whether customers must explicitly agree before using
    #
    #   Required in the API payload. Wire name: `confirms_use`.
    #   @return [Boolean]
    class TypeSetting < T::Struct
      const :type, T.nilable(Inttegro::PaymentMethod::Type), default: nil
      const :name, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :enabled, T::Boolean
      const :confirms_use, T::Boolean
    end
  end
end
