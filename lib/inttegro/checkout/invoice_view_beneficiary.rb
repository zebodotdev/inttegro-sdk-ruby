# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Checkout
    # Typed representation of the invoice view beneficiary object in the Inttegro API.
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
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] legal_entity_type
    #   Value of the `legal_entity_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `legal_entity_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] logo_url
    #   Value of the `logo_url` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `logo_url`.
    #   @return [String, nil]
    #
    # @!attribute [r] alias
    #   Value of the `alias` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `alias`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] support_email
    #   Value of the `support_email` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `support_email`.
    #   @return [String, nil]
    #
    # @!attribute [r] support_phone
    #   Value of the `support_phone` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `support_phone`.
    #   @return [String, nil]
    #
    # @!attribute [r] website_url
    #   Value of the `website_url` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `website_url`.
    #   @return [String, nil]
    #
    # @!attribute [r] accent_color
    #   Value of the `accent_color` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `accent_color`.
    #   @return [String, nil]
    #
    # @!attribute [r] invoice_support_line
    #   Value of the `invoice_support_line` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `invoice_support_line`.
    #   @return [String, nil]
    #
    # @!attribute [r] invoice_footer
    #   Value of the `invoice_footer` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `invoice_footer`.
    #   @return [String, nil]
    class InvoiceViewBeneficiary < T::Struct
      const :id, T.nilable(String), default: nil
      const :legal_entity_type, T.nilable(String), default: nil
      const :logo_url, T.nilable(String), default: nil
      const :alias, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :support_email, T.nilable(String), default: nil
      const :support_phone, T.nilable(String), default: nil
      const :website_url, T.nilable(String), default: nil
      const :accent_color, T.nilable(String), default: nil
      const :invoice_support_line, T.nilable(String), default: nil
      const :invoice_footer, T.nilable(String), default: nil
    end
  end
end
