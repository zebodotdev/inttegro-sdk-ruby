# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class BalanceTransactions
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def lookup(transaction_id:)
        @http.post_model(
          "/balance_transactions/lookup",
          Commerce::Models::BalanceTransactionResponse,
          { transaction_id: transaction_id }
        )
      end

      def page(payload = {})
        @http.post_model(
          "/balance_transactions/page",
          Commerce::Models::BalanceTransactionPageResponse,
          payload || {}
        )
      end
    end
  end
end
