# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "invoice_format"

module Inttegro
  class Order
    # Typed representation of the invoice object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [String, nil]
    #
    # @!attribute [r] format_value
    #   Value of the `format` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `format`.
    #   @return [Inttegro::Order::InvoiceFormat]
    class Invoice < T::Struct
      const :number, T.nilable(String), default: nil
      const :format_value, Inttegro::Order::InvoiceFormat, name: "format"
    end
  end
end
