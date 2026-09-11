# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Order-level invoice rendering data. Pages uses this data when rendering invoice web and
    # download views.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Optional invoice number. When omitted, invoice delivery falls back to the order number and
    #   then the order ID for labels.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [String, nil]
    #
    # @!attribute [r] memo
    #   Optional invoice memo.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `memo`.
    #   @return [String, nil]
    #
    # @!attribute [r] footer
    #   Optional invoice footer.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `footer`.
    #   @return [String, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    class InvoiceSettings < T::Struct
      const :number, T.nilable(String), default: nil
      const :memo, T.nilable(String), default: nil
      const :footer, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    end
  end
end
