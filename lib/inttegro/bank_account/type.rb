# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module BankAccount
    # Bank account sub-type
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Type < T::Enum
      enums do
        # Serialized wire value: `ghana_bank_account`.
        # @return [Inttegro::BankAccount::Type]
        GHANA_BANK_ACCOUNT = new("ghana_bank_account")
      end
    end
  end
end
