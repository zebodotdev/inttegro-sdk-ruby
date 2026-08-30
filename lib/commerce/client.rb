# frozen_string_literal: true

require_relative "http_client"
require_relative "resources/orders"
require_relative "resources/otp"
require_relative "resources/chimes"
require_relative "resources/schedules"
require_relative "resources/broadcasts"
require_relative "resources/message_templates"
require_relative "resources/payment_methods"
require_relative "resources/payouts"
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

module Commerce
  # Main entry point for interacting with the Commerce API.
  class Client
    attr_reader :orders,
                :otp,
                :chimes,
                :schedules,
                :broadcasts,
                :message_templates,
                :payment_methods,
                :payouts,
                :balance_transactions,
                :financial_accounts,
                :file_references,
                :files,
                :file_links,
                :customers,
                :products,
                :prices,
                :purchase_intents,
                :balances,
                :apps,
                :keys,
                :spec,
                :upload_requests

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
      @http = HTTPClient.new(
        api_key: api_key,
        base_url: base_url,
        read_timeout: read_timeout,
        open_timeout: open_timeout,
        adapter: adapter
      )

      @orders = Resources::Orders.new(@http)
      @otp = Resources::Otp.new(@http)
      @chimes = Resources::Chimes.new(@http)
      @schedules = Resources::Schedules.new(@http)
      @broadcasts = Resources::Broadcasts.new(@http)
      @message_templates = Resources::MessageTemplates.new(@http)
      @payment_methods = Resources::PaymentMethods.new(@http)
      @payouts = Resources::Payouts.new(@http)
      @balance_transactions = Resources::BalanceTransactions.new(@http)
      @financial_accounts = Resources::FinancialAccounts.new(@http)
      @file_references = Resources::FileReferences.new(@http)
      @files = Resources::Files.new(@http)
      @file_links = Resources::FileLinks.new(@http)
      @customers = Resources::Customers.new(@http)
      @products = Resources::Products.new(@http)
      @prices = Resources::Prices.new(@http)
      @purchase_intents = Resources::PurchaseIntents.new(@http)
      @balances = Resources::Balances.new(@http)
      @apps = Resources::Apps.new(@http)
      @keys = Resources::Keys.new(@http)
      @spec = Resources::Spec.new(@http)
      @upload_requests = Resources::UploadRequests.new(@http)
    end
  end
end
