# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "invoice_view_format_pdf"
require_relative "invoice_view_format_receipt"
require_relative "invoice_view_format_web"

module Inttegro
  module Checkout
    # Typed representation of the invoice view format object in the Inttegro API.
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
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `web`.
    #   @return [Inttegro::Checkout::InvoiceViewFormatWeb, nil]
    #
    # @!attribute [r] pdf
    #   Value of the `pdf` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `pdf`.
    #   @return [Inttegro::Checkout::InvoiceViewFormatPdf, nil]
    #
    # @!attribute [r] receipt
    #   Value of the `receipt` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `receipt`.
    #   @return [Inttegro::Checkout::InvoiceViewFormatReceipt, nil]
    class InvoiceViewFormat < T::Struct
      const :web, T.nilable(Inttegro::Checkout::InvoiceViewFormatWeb), default: nil
      const :pdf, T.nilable(Inttegro::Checkout::InvoiceViewFormatPdf), default: nil
      const :receipt, T.nilable(Inttegro::Checkout::InvoiceViewFormatReceipt), default: nil
    end
  end
end
