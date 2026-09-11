# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../price/price_params"
require_relative "create_request_price_original"

module Inttegro
  class PurchaseIntent
    # Price selection for the Buy link. Send exactly one of id or nominal and at most one of
    # original or original_id.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Active, unarchived app-owned price ID that belongs to the selected product
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] nominal
    #   Inline offer amount when no price ID is provided
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `nominal`.
    #   @return [Inttegro::Price::PriceParams, nil]
    #
    # @!attribute [r] original
    #   Optional original price used for comparison display
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `original`.
    #   @return [Inttegro::PurchaseIntent::CreateRequestPriceOriginal, nil]
    #
    # @!attribute [r] original_id
    #   App-owned comparison price ID when not using original.id
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `original_id`.
    #   @return [String, nil]
    class CreateRequestPrice < T::Struct
      const :id, T.nilable(String), default: nil
      const :nominal, T.nilable(Inttegro::Price::PriceParams), default: nil
      const :original, T.nilable(Inttegro::PurchaseIntent::CreateRequestPriceOriginal), default: nil
      const :original_id, T.nilable(String), default: nil
    end
  end
end
