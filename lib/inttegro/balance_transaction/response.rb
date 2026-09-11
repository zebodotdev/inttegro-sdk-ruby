# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "balance_transaction"

module Inttegro
  class BalanceTransaction
    # Typed representation of the response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] transaction
    #   Merchant balance entry caused by a payment or refund. `type` describes the semantic source,
    #   not direction. A payment transaction contains `payment_id`; a refund transaction contains
    #   `refund_id`. Exactly one matching reference is present.
    #
    #   Required in the API payload. Wire name: `transaction`.
    #   @return [Inttegro::BalanceTransaction]
    class Response < T::Struct
      const :transaction, Inttegro::BalanceTransaction
    end
  end
end
