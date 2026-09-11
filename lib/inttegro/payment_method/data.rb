# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "data_mobile_money"
require_relative "data_type"

module Inttegro
  class PaymentMethod
    # Payment instrument details for tokenization
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Payment rail type (currently only mobile_money supported)
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::PaymentMethod::DataType]
    #
    # @!attribute [r] mobile_money
    #   Mobile money wallet details (required when type is mobile_money)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `mobile_money`.
    #   @return [Inttegro::PaymentMethod::DataMobileMoney, nil]
    class Data < T::Struct
      const :type, Inttegro::PaymentMethod::DataType
      const :mobile_money, T.nilable(Inttegro::PaymentMethod::DataMobileMoney), default: nil
    end
  end
end
