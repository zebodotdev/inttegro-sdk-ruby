# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class FinancialAccounts
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload)
        @http.post_model(
          "/financial_accounts/create",
          Commerce::Models::CreateFinancialAccountResponse,
          payload
        )
      end

      def lookup(account_id:)
        @http.post_model(
          "/financial_accounts/lookup",
          Commerce::Models::LookupFinancialAccountResponse,
          { account_id: account_id }
        )
      end

      def connect(payload)
        @http.post_model(
          "/financial_accounts/connect",
          Commerce::Models::ConnectFinancialAccountResponse,
          payload
        )
      end

      def page(payload = {})
        @http.post_model(
          "/financial_accounts/page",
          Commerce::Models::PageFinancialAccountsResponseInline,
          payload || {}
        )
      end

      def update(payload)
        @http.post_model(
          "/financial_accounts/update",
          Commerce::Models::UpdateFinancialAccountResponse,
          payload
        )
      end

      def enable_push(account_id:)
        @http.post_model(
          "/financial_accounts/enable_push",
          Commerce::Models::EnableFinancialAccountPushResponse,
          { account_id: account_id }
        )
      end

      def disable_push(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_model(
          "/financial_accounts/disable_push",
          Commerce::Models::DisableFinancialAccountPushResponse,
          payload
        )
      end

      def enable_pull(account_id:)
        @http.post_model(
          "/financial_accounts/enable_pull",
          Commerce::Models::EnableFinancialAccountPullResponse,
          { account_id: account_id }
        )
      end

      def disable_pull(account_id:)
        @http.post_model(
          "/financial_accounts/disable_pull",
          Commerce::Models::DisableFinancialAccountPullResponse,
          { account_id: account_id }
        )
      end

      def disconnect(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_model(
          "/financial_accounts/disconnect",
          Commerce::Models::DisconnectFinancialAccountResponse,
          payload
        )
      end

      def reconnect(account_id:)
        @http.post_model(
          "/financial_accounts/reconnect",
          Commerce::Models::ReconnectFinancialAccountResponse,
          { account_id: account_id }
        )
      end
    end
  end
end
