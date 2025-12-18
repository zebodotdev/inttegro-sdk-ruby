# frozen_string_literal: true

require_relative "http_client"
require_relative "resources/orders"
require_relative "resources/otp"
require_relative "resources/chimes"
require_relative "resources/payment_methods"
require_relative "resources/payouts"
require_relative "resources/balance_transactions"
require_relative "resources/financial_accounts"
require_relative "resources/platform"
require_relative "resources/spec"

module Commerce
  # Main entry point for interacting with the Commerce API.
  class Client
    attr_reader :orders,
                :otp,
                :chimes,
                :payment_methods,
                :payouts,
                :balance_transactions,
                :financial_accounts,
                :platform,
                :spec

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
      @payment_methods = Resources::PaymentMethods.new(@http)
      @payouts = Resources::Payouts.new(@http)
      @balance_transactions = Resources::BalanceTransactions.new(@http)
      @financial_accounts = Resources::FinancialAccounts.new(@http)
      @platform = Resources::Platform.new(@http)
      @spec = Resources::Spec.new(@http)
    end
  end
end
