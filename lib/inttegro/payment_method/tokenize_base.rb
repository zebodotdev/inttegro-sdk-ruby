# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "tokenize_base_type"

module Inttegro
  class PaymentMethod
    # Typed representation of the tokenize base object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] customer_id
    #   Existing customer in the authenticated application who will own the payment method.
    #
    #   Required in the API payload. Wire name: `customer_id`.
    #   @return [String]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::PaymentMethod::TokenizeBaseType]
    class TokenizeBase < T::Struct
      const :customer_id, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :type, Inttegro::PaymentMethod::TokenizeBaseType
    end
  end
end
