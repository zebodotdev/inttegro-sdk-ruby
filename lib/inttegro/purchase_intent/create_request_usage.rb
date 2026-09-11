# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Optional link-use policy. Omit to create a reusable Buy link.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] single_use
    #   Creating the first order consumes the Buy link
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `single_use`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] multi_use
    #   The Buy link may create multiple orders
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `multi_use`.
    #   @return [Boolean, nil]
    class CreateRequestUsage < T::Struct
      const :single_use, T.nilable(T::Boolean), default: nil
      const :multi_use, T.nilable(T::Boolean), default: nil
    end
  end
end
