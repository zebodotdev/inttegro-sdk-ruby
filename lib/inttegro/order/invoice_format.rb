# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "document_format"

module Inttegro
  class Order
    # Typed representation of the invoice format object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] web
    #   Value of the `web` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `web`.
    #   @return [Inttegro::Order::DocumentFormat]
    #
    # @!attribute [r] pdf
    #   Value of the `pdf` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `pdf`.
    #   @return [Inttegro::Order::DocumentFormat]
    #
    # @!attribute [r] receipt
    #   Value of the `receipt` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `receipt`.
    #   @return [Inttegro::Order::DocumentFormat, nil]
    class InvoiceFormat < T::Struct
      const :web, Inttegro::Order::DocumentFormat
      const :pdf, Inttegro::Order::DocumentFormat
      const :receipt, T.nilable(Inttegro::Order::DocumentFormat), default: nil
    end
  end
end
