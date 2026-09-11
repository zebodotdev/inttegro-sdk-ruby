# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Read-only client for balance transactions recorded for the authenticated application.
    #
    # Access this resource through {Inttegro::Client#balance_transactions}.
    class BalanceTransactions
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Retrieve one balance transaction by its identifier.
      #
      # @param transaction_id [String] unique balance transaction identifier
      # @return [Inttegro::BalanceTransaction] matching transaction
      def lookup(transaction_id:)
        @http.post_resource("/balance_transactions/lookup", Inttegro::BalanceTransaction, :transaction,
          { transaction_id: transaction_id }
        )
      end

      # Retrieve a page of balance transactions.
      #
      # @param payload [Hash, Inttegro::BalanceTransaction::PageRequest] pagination and filter fields
      # @return [Inttegro::BalanceTransaction::Page] typed page of transactions
      def page(payload = {})
        @http.post_resource("/balance_transactions/page", Inttegro::BalanceTransaction::Page, :page,
          payload || {}
        )
      end
    end
  end
end
