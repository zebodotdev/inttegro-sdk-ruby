# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "currency_snapshot_refund"
require_relative "currency_snapshot_reserved"
require_relative "value"

module Inttegro
  module Balance
    # Typed representation of the currency snapshot object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] available
    #   Value of the `available` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `available`.
    #   @return [Inttegro::Balance::Value]
    #
    # @!attribute [r] includes_transactions_before
    #   The snapshot includes transactions created before this timestamp
    #
    #   Required in the API payload. Wire name: `includes_transactions_before`.
    #   @return [Time]
    #
    # @!attribute [r] pending
    #   Value of the `pending` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `pending`.
    #   @return [Inttegro::Balance::Value]
    #
    # @!attribute [r] refund
    #   Funds assigned to refund activity at the snapshot cutoff
    #
    #   Required in the API payload. Wire name: `refund`.
    #   @return [Inttegro::Balance::CurrencySnapshotRefund]
    #
    # @!attribute [r] reserved
    #   Funds held back from payout at the snapshot cutoff
    #
    #   Required in the API payload. Wire name: `reserved`.
    #   @return [Inttegro::Balance::CurrencySnapshotReserved]
    class CurrencySnapshot < T::Struct
      const :available, Inttegro::Balance::Value
      const :includes_transactions_before, Time
      const :pending, Inttegro::Balance::Value
      const :refund, Inttegro::Balance::CurrencySnapshotRefund
      const :reserved, Inttegro::Balance::CurrencySnapshotReserved
    end
  end
end
