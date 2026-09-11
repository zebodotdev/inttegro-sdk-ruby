# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../wallet/type"
require_relative "wallet_request_wallet_mobile_money"

module Inttegro
  class FinancialAccount
    # Typed representation of the wallet request wallet object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Wallet::Type]
    #
    # @!attribute [r] mobile_money
    #   Value of the `mobile_money` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `mobile_money`.
    #   @return [Inttegro::FinancialAccount::WalletRequestWalletMobileMoney]
    class WalletRequestWallet < T::Struct
      const :type, Inttegro::Wallet::Type
      const :mobile_money, Inttegro::FinancialAccount::WalletRequestWalletMobileMoney
    end
  end
end
