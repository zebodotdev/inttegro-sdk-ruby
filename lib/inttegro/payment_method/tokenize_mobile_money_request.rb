# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "owner_input"
require_relative "tokenize_mobile_money_request_mobile_money"
require_relative "tokenize_mobile_money_request_type"

module Inttegro
  class PaymentMethod
    # Typed representation of the tokenize mobile money request object in the Inttegro API.
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
    #   @return [Inttegro::PaymentMethod::TokenizeMobileMoneyRequestType]
    #
    # @!attribute [r] mobile_money
    #   Value of the `mobile_money` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `mobile_money`.
    #   @return [Inttegro::PaymentMethod::TokenizeMobileMoneyRequestMobileMoney]
    #
    # @!attribute [r] owner
    #   Value of the `owner` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `owner`.
    #   @return [Inttegro::PaymentMethod::OwnerInput]
    class TokenizeMobileMoneyRequest < T::Struct
      const :customer_id, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :type, Inttegro::PaymentMethod::TokenizeMobileMoneyRequestType
      const :mobile_money, Inttegro::PaymentMethod::TokenizeMobileMoneyRequestMobileMoney
      const :owner, Inttegro::PaymentMethod::OwnerInput
    end
  end
end
