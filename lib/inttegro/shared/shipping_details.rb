# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../money/amount_params"

module Inttegro
  module Shared
    # Typed representation of the shipping details object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Unique ID for this shipping charge
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] tax_code
    #   The tax classification code for the shipping fee
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `tax_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] fee
    #   Value of the `fee` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `fee`.
    #   @return [Inttegro::Money::AmountParams]
    class ShippingDetails < T::Struct
      const :id, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :fee, Inttegro::Money::AmountParams
    end
  end
end
