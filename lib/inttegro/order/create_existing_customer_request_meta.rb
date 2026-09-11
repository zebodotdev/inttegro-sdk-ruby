# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Optional metadata controlling request processing
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] idempotency_key
    #   Unique key to prevent duplicate order creation
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `idempotency_key`.
    #   @return [String, nil]
    class CreateExistingCustomerRequestMeta < T::Struct
      const :idempotency_key, T.nilable(String), default: nil
    end
  end
end
