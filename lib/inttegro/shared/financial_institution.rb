# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "financial_institution_bank"
require_relative "financial_institution_mobile_money_provider"

module Inttegro
  module Shared
    # Typed representation of the financial institution object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] bank
    #   Value of the `bank` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `bank`.
    #   @return [Inttegro::Shared::FinancialInstitutionBank, nil]
    #
    # @!attribute [r] country
    #   Value of the `country` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `country`.
    #   @return [String]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] mobile_money_provider
    #   Value of the `mobile_money_provider` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `mobile_money_provider`.
    #   @return [Inttegro::Shared::FinancialInstitutionMobileMoneyProvider, nil]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [String]
    class FinancialInstitution < T::Struct
      const :bank, T.nilable(Inttegro::Shared::FinancialInstitutionBank), default: nil
      const :country, String
      const :id, String
      const :mobile_money_provider, T.nilable(Inttegro::Shared::FinancialInstitutionMobileMoneyProvider), default: nil
      const :name, String
      const :type, String
    end
  end
end
