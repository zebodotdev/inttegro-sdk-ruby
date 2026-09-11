# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "financial_institution_bank_branch"

module Inttegro
  module Shared
    # Typed representation of the financial institution bank object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] bank_account_type
    #   Value of the `bank_account_type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `bank_account_type`.
    #   @return [String]
    #
    # @!attribute [r] branch
    #   Value of the `branch` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `branch`.
    #   @return [Inttegro::Shared::FinancialInstitutionBankBranch, nil]
    #
    # @!attribute [r] code_scheme
    #   Value of the `code_scheme` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `code_scheme`.
    #   @return [String]
    #
    # @!attribute [r] sort_code_prefix
    #   Value of the `sort_code_prefix` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sort_code_prefix`.
    #   @return [String, nil]
    #
    # @!attribute [r] swift_code
    #   Value of the `swift_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `swift_code`.
    #   @return [String, nil]
    class FinancialInstitutionBank < T::Struct
      const :bank_account_type, String
      const :branch, T.nilable(Inttegro::Shared::FinancialInstitutionBankBranch), default: nil
      const :code_scheme, String
      const :sort_code_prefix, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end
  end
end
