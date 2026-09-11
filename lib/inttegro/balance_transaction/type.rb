# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class BalanceTransaction
    # Semantic source or cause of the transaction, not its direction.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Type < T::Enum
      enums do
        # Serialized wire value: `payment`.
        # @return [Inttegro::BalanceTransaction::Type]
        PAYMENT = new("payment")
        # Serialized wire value: `refund`.
        # @return [Inttegro::BalanceTransaction::Type]
        REFUND = new("refund")
      end
    end
  end
end
