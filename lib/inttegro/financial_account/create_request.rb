# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "bank_request"
require_relative "dosh_request"
require_relative "wallet_request"

module Inttegro
  class FinancialAccount
    # Typed representation of the create request object in the Inttegro API.
    #
    # @api public
    # @return [Inttegro::FinancialAccount::WalletRequest, Inttegro::FinancialAccount::BankRequest, Inttegro::FinancialAccount::DoshRequest]
    CreateRequest = T.type_alias { T.any(Inttegro::FinancialAccount::WalletRequest, Inttegro::FinancialAccount::BankRequest, Inttegro::FinancialAccount::DoshRequest) }
  end
end
