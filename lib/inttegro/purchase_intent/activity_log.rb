# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "activity"

module Inttegro
  class PurchaseIntent
    # Recent authenticated-owner activity for the purchase intent.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] recent
    #   Value of the `recent` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `recent`.
    #   @return [Array<Inttegro::PurchaseIntent::Activity>, nil]
    class ActivityLog < T::Struct
      const :recent, T.nilable(T::Array[Inttegro::PurchaseIntent::Activity]), default: nil
    end
  end
end
