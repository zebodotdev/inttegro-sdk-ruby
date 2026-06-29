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

      def update(payload)
        @http.post("/financial_accounts/update", payload)
      end

      def enable_push(account_id:)
        @http.post("/financial_accounts/enable_push", { account_id: account_id })
      end

      def disable_push(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post("/financial_accounts/disable_push", payload)
      end

      def enable_pull(account_id:)
        @http.post("/financial_accounts/enable_pull", { account_id: account_id })
      end

      def disable_pull(account_id:)
        @http.post("/financial_accounts/disable_pull", { account_id: account_id })
      end

      def disconnect(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post("/financial_accounts/disconnect", payload)
      end
    end
  end
end
