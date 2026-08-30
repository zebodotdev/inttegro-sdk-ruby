# frozen_string_literal: true

module Commerce
  module Resources
    class BalanceTransactions
      def initialize(http)
        @http = http
      end

      def lookup(transaction_id:)
        @http.post("/balance_transactions/lookup", { transaction_id: transaction_id })
      end

      def page(payload = {})
        @http.post("/balance_transactions/page", payload || {})
      end
    end
  end
end
