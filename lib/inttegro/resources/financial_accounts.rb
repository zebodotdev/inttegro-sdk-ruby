# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for financial accounts used for supported collections and payouts.
    #
    # Access this resource through {Inttegro::Client#financial_accounts}.
    class FinancialAccounts
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a wallet, Ghana bank account, or Dosh account managed through Inttegro.
      #
      # @param payload [Hash, Inttegro::FinancialAccount::CreateRequest] account details
      # @return [Inttegro::FinancialAccount] created account
      def create(payload)
        @http.post_resource(
          "/financial_accounts/create",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      # Retrieve a financial account by identifier.
      #
      # @param account_id [String] unique financial account identifier
      # @return [Inttegro::FinancialAccount] matching account
      def lookup(account_id:)
        @http.post_resource(
          "/financial_accounts/lookup",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end

      # Connect an existing financial account for supported collections or payouts.
      #
      # @param payload [Hash, Inttegro::FinancialAccount::CreateRequest] account details to connect
      # @return [Inttegro::FinancialAccount] connected account
      def connect(payload)
        @http.post_resource(
          "/financial_accounts/connect",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      # Retrieve a page of financial accounts.
      #
      # @param payload [Hash, Inttegro::FinancialAccount::FinancialAccountPageRequest] pagination fields
      # @return [Inttegro::FinancialAccount::Page] typed page of accounts
      def page(payload = {})
        @http.post_resource(
          "/financial_accounts/page",
          Inttegro::FinancialAccount::Page, :page,
          payload || {}
        )
      end

      # Update mutable account profile fields.
      #
      # @param payload [Hash, Inttegro::FinancialAccount::UpdateRequest] account identifier and fields to change
      # @return [Inttegro::FinancialAccount] updated account
      def update(payload)
        @http.post_resource(
          "/financial_accounts/update",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      # Allow the account to receive supported payouts and transfers.
      #
      # @param account_id [String] unique financial account identifier
      # @return [Inttegro::FinancialAccount] updated account
      def enable_push(account_id:)
        @http.post_resource(
          "/financial_accounts/enable_push",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end

      # Stop the account from receiving supported payouts and transfers.
      #
      # @param account_id [String] unique financial account identifier
      # @param unset_as_payout_destination [Boolean, nil] whether to remove this account from payout destinations
      # @return [Inttegro::FinancialAccount] updated account
      def disable_push(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_resource(
          "/financial_accounts/disable_push",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      # Allow supported charges to pull funds from the account.
      #
      # @param account_id [String] unique financial account identifier
      # @return [Inttegro::FinancialAccount] updated account
      def enable_pull(account_id:)
        @http.post_resource(
          "/financial_accounts/enable_pull",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end

      # Stop supported charges from pulling funds from the account.
      #
      # @param account_id [String] unique financial account identifier
      # @return [Inttegro::FinancialAccount] updated account
      def disable_pull(account_id:)
        @http.post_resource(
          "/financial_accounts/disable_pull",
          Inttegro::FinancialAccount, :account,
          { account_id: account_id }
        )
      end

      # Disconnect an account from new Inttegro activity.
      #
      # @param account_id [String] unique financial account identifier
      # @param unset_as_payout_destination [Boolean, nil] whether to remove this account from payout destinations
      # @return [Inttegro::FinancialAccount] disconnected account
      def disconnect(account_id:, unset_as_payout_destination: nil)
        payload = { account_id: account_id }
        payload[:unset_as_payout_destination] = unset_as_payout_destination unless unset_as_payout_destination.nil?
        @http.post_resource(
          "/financial_accounts/disconnect",
          Inttegro::FinancialAccount, :account,
          payload
        )
      end

      # Reconnect a previously disconnected financial account.
      #
      # @param account_id [String] unique financial account identifier
      # @return [Inttegro::FinancialAccount] reconnected account
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
