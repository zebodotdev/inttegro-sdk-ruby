# frozen_string_literal: true

module Commerce
  module Resources
    class FinancialAccounts
      def initialize(http)
        @http = http
      end

      def create(payload)
        @http.post("/financial_accounts/create", payload)
      end

      def lookup(account_id:)
        @http.post("/financial_accounts/lookup", { account_id: account_id })
      end

      def connect(payload)
        @http.post("/financial_accounts/connect", payload)
      end

      def archive(payload)
        @http.post("/financial_accounts/archive", payload)
      end

      def page(payload = {})
        @http.post("/financial_accounts/page", payload || {})
      end

      def verify(payload)
        @http.post("/financial_accounts/verify", payload)
      end
    end
  end
end
