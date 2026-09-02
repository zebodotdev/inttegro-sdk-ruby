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
          Inttegro::CreateFinancialAccountResponse,
          payload
        )
      end

      def lookup(account_id:)
        @http.post_model(
          "/financial_accounts/lookup",
          Inttegro::LookupFinancialAccountResponse,
          { account_id: account_id }
        )
      end

      def connect(payload)
        @http.post_model(
          "/financial_accounts/connect",
          Inttegro::ConnectFinancialAccountResponse,
          payload
        )
      end

      def page(payload = {})
        @http.post_model(
          "/financial_accounts/page",
          Inttegro::PageFinancialAccountsResponseInline,
          payload || {}
        )
      end

      def update(payload)
        @http.post_model(
          "/financial_accounts/update",
          Inttegro::UpdateFinancialAccountResponse,
          payload
        )
      end

      def enable_push(account_id:)
        @http.post_model(
          "/financial_accounts/enable_push",
          Inttegro::EnableFinancialAccountPushResponse,
          { account_id: account_id }
        )
      end

      def disable_push(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_model(
          "/financial_accounts/disable_push",
          Inttegro::DisableFinancialAccountPushResponse,
          payload
        )
      end

      def enable_pull(account_id:)
        @http.post_model(
          "/financial_accounts/enable_pull",
          Inttegro::EnableFinancialAccountPullResponse,
          { account_id: account_id }
        )
      end

      def disable_pull(account_id:)
        @http.post_model(
          "/financial_accounts/disable_pull",
          Inttegro::DisableFinancialAccountPullResponse,
          { account_id: account_id }
        )
      end

      def disconnect(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_model(
          "/financial_accounts/disconnect",
          Inttegro::DisconnectFinancialAccountResponse,
          payload
        )
      end

      def reconnect(account_id:)
        @http.post_model(
          "/financial_accounts/reconnect",
          Inttegro::ReconnectFinancialAccountResponse,
          { account_id: account_id }
        )
      end
    end
  end
end
