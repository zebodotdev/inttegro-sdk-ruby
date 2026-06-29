# frozen_string_literal: true

module Commerce
  module Resources
    class BalanceTransactions
      def initialize(http)
        @http = http
      end

      def page(payload = {})
        @http.post("/balance_transactions/page", payload || {})
      end
    end
  end
end
