# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "country_bank_directory"

module Inttegro
  module Shared
    # Complete specification for a country including supported features and requirements
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] country_code
    #   ISO 3166-1 alpha-2 country code
    #
    #   Required in the API payload. Wire name: `country_code`.
    #   @return [String]
    #
    # @!attribute [r] country_name
    #   Full country name
    #
    #   Required in the API payload. Wire name: `country_name`.
    #   @return [String]
    #
    # @!attribute [r] currencies
    #   Supported currencies in this country
    #
    #   Required in the API payload. Wire name: `currencies`.
    #   @return [Array<String>]
    #
    # @!attribute [r] payment_methods
    #   Supported payment methods in this country
    #
    #   Required in the API payload. Wire name: `payment_methods`.
    #   @return [Array<String>]
    #
    # @!attribute [r] payout_schedules
    #   Available payout schedules for this country
    #
    #   Required in the API payload. Wire name: `payout_schedules`.
    #   @return [Array<String>]
    #
    # @!attribute [r] bt_aging_specs
    #   Balance transaction aging specifications available
    #
    #   Required in the API payload. Wire name: `bt_aging_specs`.
    #   @return [Array<String>]
    #
    # @!attribute [r] legal_entity_types
    #   Legal entity types that can operate in this country
    #
    #   Required in the API payload. Wire name: `legal_entity_types`.
    #   @return [Array<String>]
    #
    # @!attribute [r] financial_account_types
    #   Financial account types available in this country
    #
    #   Required in the API payload. Wire name: `financial_account_types`.
    #   @return [Array<String>]
    #
    # @!attribute [r] id_document_types
    #   Identification document types accepted in this country
    #
    #   Required in the API payload. Wire name: `id_document_types`.
    #   @return [Array<String>]
    #
    # @!attribute [r] banks
    #   Bank reference data available for country-specific bank accounts
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `banks`.
    #   @return [Inttegro::Shared::CountryBankDirectory, nil]
    class CountrySpecification < T::Struct
      const :country_code, String
      const :country_name, String
      const :currencies, T::Array[String]
      const :payment_methods, T::Array[String]
      const :payout_schedules, T::Array[String]
      const :bt_aging_specs, T::Array[String]
      const :legal_entity_types, T::Array[String]
      const :financial_account_types, T::Array[String]
      const :id_document_types, T::Array[String]
      const :banks, T.nilable(Inttegro::Shared::CountryBankDirectory), default: nil
    end
  end
end
