# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "invoice_view_beneficiary"
require_relative "invoice_view_format"
require_relative "invoice_view_status"

module Inttegro
  module Checkout
    # Typed representation of the invoice view object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] application_id
    #   Value of the `application_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `application_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `number`.
    #   @return [String, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [Inttegro::Checkout::InvoiceViewStatus, nil]
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] due_at
    #   Value of the `due_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `due_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] format_value
    #   Value of the `format` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `format`.
    #   @return [Inttegro::Checkout::InvoiceViewFormat]
    #
    # @!attribute [r] beneficiary
    #   Value of the `beneficiary` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `beneficiary`.
    #   @return [Inttegro::Checkout::InvoiceViewBeneficiary, nil]
    class InvoiceView < T::Struct
      const :id, String
      const :application_id, T.nilable(String), default: nil
      const :number, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Checkout::InvoiceViewStatus), default: nil
      const :created_at, Time
      const :due_at, T.nilable(Time), default: nil
      const :format_value, Inttegro::Checkout::InvoiceViewFormat, name: "format"
      const :beneficiary, T.nilable(Inttegro::Checkout::InvoiceViewBeneficiary), default: nil
    end
  end
end
