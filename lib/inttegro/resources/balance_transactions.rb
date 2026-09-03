# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class BalanceTransactions
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def lookup(transaction_id:)
        @http.post_resource("/balance_transactions/lookup", Inttegro::BalanceTransaction, :transaction,
          { transaction_id: transaction_id }
        )
      end

      def page(payload = {})
        @http.post_resource("/balance_transactions/page", Inttegro::BalanceTransactionPage, :page,
          payload || {}
        )
      end
    end
  end
end
