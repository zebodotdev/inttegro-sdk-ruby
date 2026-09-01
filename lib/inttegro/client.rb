# frozen_string_literal: true
# typed: strict

require_relative "http_client"
require_relative "types"
require_relative "resources/orders"
require_relative "resources/otp"
require_relative "resources/chimes"
require_relative "resources/schedules"
require_relative "resources/broadcasts"
require_relative "resources/message_templates"
require_relative "resources/payment_methods"
require_relative "resources/payouts"
require_relative "resources/refunds"
require_relative "resources/balance_transactions"
require_relative "resources/financial_accounts"
require_relative "resources/file_references"
require_relative "resources/files"
require_relative "resources/file_links"
require_relative "resources/customers"
require_relative "resources/products"
require_relative "resources/prices"
require_relative "resources/purchase_intents"
require_relative "resources/spec"
require_relative "resources/balances"
require_relative "resources/upload_requests"
require_relative "resources/apps"
require_relative "resources/keys"

module Inttegro
  # Main entry point for interacting with the Inttegro API.
  class Client
    extend T::Sig

    sig { returns(Resources::Orders) }
    attr_reader :orders

    sig { returns(Resources::Otp) }
    attr_reader :otp

    sig { returns(Resources::Chimes) }
    attr_reader :chimes

    sig { returns(Resources::Schedules) }
    attr_reader :schedules

    sig { returns(Resources::Broadcasts) }
    attr_reader :broadcasts

    sig { returns(Resources::MessageTemplates) }
    attr_reader :message_templates

    sig { returns(Resources::PaymentMethods) }
    attr_reader :payment_methods

    sig { returns(Resources::Payouts) }
    attr_reader :payouts

    sig { returns(Resources::Refunds) }
    attr_reader :refunds

    sig { returns(Resources::BalanceTransactions) }
    attr_reader :balance_transactions

    sig { returns(Resources::FinancialAccounts) }
    attr_reader :financial_accounts

    sig { returns(Resources::FileReferences) }
    attr_reader :file_references

    sig { returns(Resources::Files) }
    attr_reader :files

    sig { returns(Resources::FileLinks) }
    attr_reader :file_links

    sig { returns(Resources::Customers) }
    attr_reader :customers

    sig { returns(Resources::Products) }
    attr_reader :products

    sig { returns(Resources::Prices) }
    attr_reader :prices

    sig { returns(Resources::PurchaseIntents) }
    attr_reader :purchase_intents

    sig { returns(Resources::Balances) }
    attr_reader :balances

    sig { returns(Resources::Apps) }
    attr_reader :apps

    sig { returns(Resources::Keys) }
    attr_reader :keys

    sig { returns(Resources::Spec) }
    attr_reader :spec

    sig { returns(Resources::UploadRequests) }
    attr_reader :upload_requests

    sig do
      params(
        token_value: T.nilable(String),
        api_key: T.nilable(String),
        token: T.nilable(String),
        base_url: T.nilable(String),
        read_timeout: T.nilable(Numeric),
        open_timeout: T.nilable(Numeric),
        adapter: T.nilable(Types::Adapter)
      ).void
    end
    def initialize(
      token_value = nil,
      api_key: nil,
      token: nil,
      base_url: DEFAULT_BASE_URL,
      read_timeout: 30,
      open_timeout: 10,
      adapter: nil
    )
      provided_token = token || token_value
      api_key ||= provided_token
      @http = T.let(HTTPClient.new(
        api_key: api_key,
        base_url: base_url,
        read_timeout: read_timeout,
        open_timeout: open_timeout,
        adapter: adapter
      ), HTTPClient)

      @orders = T.let(Resources::Orders.new(@http), Resources::Orders)
      @otp = T.let(Resources::Otp.new(@http), Resources::Otp)
      @chimes = T.let(Resources::Chimes.new(@http), Resources::Chimes)
      @schedules = T.let(Resources::Schedules.new(@http), Resources::Schedules)
      @broadcasts = T.let(Resources::Broadcasts.new(@http), Resources::Broadcasts)
      @message_templates = T.let(Resources::MessageTemplates.new(@http), Resources::MessageTemplates)
      @payment_methods = T.let(Resources::PaymentMethods.new(@http), Resources::PaymentMethods)
      @payouts = T.let(Resources::Payouts.new(@http), Resources::Payouts)
      @refunds = T.let(Resources::Refunds.new(@http), Resources::Refunds)
      @balance_transactions = T.let(Resources::BalanceTransactions.new(@http), Resources::BalanceTransactions)
      @financial_accounts = T.let(Resources::FinancialAccounts.new(@http), Resources::FinancialAccounts)
      @file_references = T.let(Resources::FileReferences.new(@http), Resources::FileReferences)
      @files = T.let(Resources::Files.new(@http), Resources::Files)
      @file_links = T.let(Resources::FileLinks.new(@http), Resources::FileLinks)
      @customers = T.let(Resources::Customers.new(@http), Resources::Customers)
      @products = T.let(Resources::Products.new(@http), Resources::Products)
      @prices = T.let(Resources::Prices.new(@http), Resources::Prices)
      @purchase_intents = T.let(Resources::PurchaseIntents.new(@http), Resources::PurchaseIntents)
      @balances = T.let(Resources::Balances.new(@http), Resources::Balances)
      @apps = T.let(Resources::Apps.new(@http), Resources::Apps)
      @keys = T.let(Resources::Keys.new(@http), Resources::Keys)
      @spec = T.let(Resources::Spec.new(@http), Resources::Spec)
      @upload_requests = T.let(Resources::UploadRequests.new(@http), Resources::UploadRequests)
    end
  end
end
