# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class FinancialAccounts
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_model(
          "/financial_accounts/create",
          Inttegro::Models::CreateFinancialAccountResponse,
          payload
        )
      end

      def lookup(account_id:)
        @http.post_model(
          "/financial_accounts/lookup",
          Inttegro::Models::LookupFinancialAccountResponse,
          { account_id: account_id }
        )
      end

      def connect(payload)
        @http.post_model(
          "/financial_accounts/connect",
          Inttegro::Models::ConnectFinancialAccountResponse,
          payload
        )
      end

      def page(payload = {})
        @http.post_model(
          "/financial_accounts/page",
          Inttegro::Models::PageFinancialAccountsResponseInline,
          payload || {}
        )
      end

      def update(payload)
        @http.post_model(
          "/financial_accounts/update",
          Inttegro::Models::UpdateFinancialAccountResponse,
          payload
        )
      end

      def enable_push(account_id:)
        @http.post_model(
          "/financial_accounts/enable_push",
          Inttegro::Models::EnableFinancialAccountPushResponse,
          { account_id: account_id }
        )
      end

      def disable_push(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_model(
          "/financial_accounts/disable_push",
          Inttegro::Models::DisableFinancialAccountPushResponse,
          payload
        )
      end

      def enable_pull(account_id:)
        @http.post_model(
          "/financial_accounts/enable_pull",
          Inttegro::Models::EnableFinancialAccountPullResponse,
          { account_id: account_id }
        )
      end

      def disable_pull(account_id:)
        @http.post_model(
          "/financial_accounts/disable_pull",
          Inttegro::Models::DisableFinancialAccountPullResponse,
          { account_id: account_id }
        )
      end

      def disconnect(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_model(
          "/financial_accounts/disconnect",
          Inttegro::Models::DisconnectFinancialAccountResponse,
          payload
        )
      end

      def reconnect(account_id:)
        @http.post_model(
          "/financial_accounts/reconnect",
          Inttegro::Models::ReconnectFinancialAccountResponse,
          { account_id: account_id }
        )
      end
    end
  end
end
