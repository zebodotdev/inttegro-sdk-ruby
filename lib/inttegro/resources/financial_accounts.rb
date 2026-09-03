# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class FinancialAccounts
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_resource(
          "/financial_accounts/create",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      def lookup(account_id:)
        @http.post_resource(
          "/financial_accounts/lookup",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end

      def connect(payload)
        @http.post_resource(
          "/financial_accounts/connect",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      def page(payload = {})
        @http.post_resource(
          "/financial_accounts/page",
          Inttegro::FinancialAccountPage, :page,
          payload || {}
        )
      end

      def update(payload)
        @http.post_resource(
          "/financial_accounts/update",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      def enable_push(account_id:)
        @http.post_resource(
          "/financial_accounts/enable_push",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end

      def disable_push(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_resource(
          "/financial_accounts/disable_push",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      def enable_pull(account_id:)
        @http.post_resource(
          "/financial_accounts/enable_pull",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end

      def disable_pull(account_id:)
        @http.post_resource(
          "/financial_accounts/disable_pull",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end

      def disconnect(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_resource(
          "/financial_accounts/disconnect",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      def reconnect(account_id:)
        @http.post_resource(
          "/financial_accounts/reconnect",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end
    end
  end
end
