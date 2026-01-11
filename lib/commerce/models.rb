# frozen_string_literal: true

module Commerce
  module Models
    PullPushConfig = Struct.new(:enabled, keyword_init: true)

    WalletMobileMoney = Struct.new(:id, :account, :network, keyword_init: true)
    WalletConfig = Struct.new(:type, :mobile_money, keyword_init: true)

    BankAccountOwnerAddress = Struct.new(
      :name,
      :phone,
      :line_1,
      :line_2,
      :city,
      :region,
      :post_code,
      :country,
      keyword_init: true
    )
    BankAccountOwner = Struct.new(:name, :address, keyword_init: true)
    GhanaBankAccount = Struct.new(:number, :sort_code, :swift_code, :owner, keyword_init: true)
    BankAccountConfig = Struct.new(:type, :ghana_bank_account, keyword_init: true)

    FinancialAccountCreateRequest = Struct.new(
      :label,
      :type,
      :reference,
      :currency,
      :description,
      :pull_configuration,
      :push_configuration,
      :wallet,
      :bank_account,
      :dosh_account,
      keyword_init: true
    )
    FinancialAccountLookupRequest = Struct.new(:account_id, keyword_init: true)
    FinancialAccountArchiveRequest = Struct.new(:account_id, keyword_init: true)
    FinancialAccountVerifyRequest = Struct.new(:account_id, :token, keyword_init: true)

    Money = Struct.new(:currency, :value, keyword_init: true)
    Address = Struct.new(
      :name,
      :phone_number,
      :line1,
      :line2,
      :town,
      :region,
      :district,
      :country,
      :post_code,
      keyword_init: true
    )
    BillingDetails = Struct.new(:name, :email_address, :phone_number, :address, keyword_init: true)
    Shipping = Struct.new(:address, keyword_init: true)
    CustomerData = Struct.new(:name, :email_address, :phone_number, :reference, :custom_data, keyword_init: true)
    CheckoutSettings = Struct.new(:redirect_url, :cancel_url, keyword_init: true)

    ProductDetails = Struct.new(
      :id,
      :type,
      :name,
      :about,
      :quantity,
      :price,
      :reference,
      :tax_code,
      :custom_data,
      keyword_init: true
    )
    FeeDetails = Struct.new(:id, :label, :tax_code, :description, :custom_data, :amount, keyword_init: true)
    ShippingDetails = Struct.new(:id, :tax_code, :custom_data, :fee, keyword_init: true)
    LineItem = Struct.new(:type, :product, :fee, :shipping, keyword_init: true)

    OrderPayoutFinancialAccount = Struct.new(:type, :wallet, :bank_account, :dosh_account, keyword_init: true)
    OrderPayoutDestination = Struct.new(:financial_account_id, :financial_account_data, keyword_init: true)
    OrderPayoutSettings = Struct.new(:destination, :enable_fx, keyword_init: true)

    MobileMoney = Struct.new(:issuer, :number, keyword_init: true)
    PaymentMethodData = Struct.new(:type, :mobile_money, keyword_init: true)

    OrderCreateRequest = Struct.new(
      :customer_data,
      :customer_id,
      :payment_method_id,
      :payment_method_data,
      :statement_descriptor,
      :execute_payment,
      :send_invoice,
      :finalize,
      :idempotency_key,
      :checkout_settings,
      :payout_settings,
      :number,
      :line_items,
      :billing_details,
      :shipping,
      keyword_init: true
    )
    OrderLookupRequest = Struct.new(:order_id, keyword_init: true)
    OrderPayRequest = Struct.new(:order_id, :payment_method_id, :payment_method_data, :paid_out_of_band, keyword_init: true)
    OrderConfirmPaymentRequest = Struct.new(:order_id, :token, keyword_init: true)
    OrderRequestConfirmationRequest = Struct.new(:order_id, keyword_init: true)
    OrderFinalizeRequest = Struct.new(:order_id, keyword_init: true)
    OrderCompleteRequest = Struct.new(:order_id, :paid_out_of_band, keyword_init: true)
    OrderCancelRequest = Struct.new(:order_id, keyword_init: true)
    OrderRefundRequest = Struct.new(:order_id, keyword_init: true)
    OrderPageRequest = Struct.new(:page_number, :page_size, keyword_init: true)

    PaymentMethodTokenizeRequest = Struct.new(:customer_id, :payment_method_data, :verify_immediately, keyword_init: true)
    PaymentMethodVerifyRequest = Struct.new(:payment_method_id, keyword_init: true)
    PaymentMethodConfirmVerificationRequest = Struct.new(:payment_method_id, :token, keyword_init: true)
    PaymentMethodLookupRequest = Struct.new(:payment_method_id, keyword_init: true)
    PaymentMethodDeleteRequest = Struct.new(:payment_method_id, keyword_init: true)

    PayoutSetDestinationsRequest = Struct.new(:destinations, keyword_init: true)
    PayoutPageRequest = Struct.new(:page_number, :page_size, keyword_init: true)

    ChimeRecipientPhone = Struct.new(:number, keyword_init: true)
    ChimeRecipientEmail = Struct.new(:address, keyword_init: true)
    ChimeRecipient = Struct.new(:type, :name, :phone, :email, keyword_init: true)
    ChimeTransmission = Struct.new(
      :created_at,
      :delivered_at,
      :failed_at,
      :sent_at,
      :sent_via,
      :status,
      keyword_init: true
    )
    Chime = Struct.new(
      :id,
      :created_at,
      :full_message,
      :recipient,
      :sender_id,
      :purpose,
      :custom_data,
      :delivery,
      :transmission,
      keyword_init: true
    )
    ChimeResponse = Struct.new(:chime, keyword_init: true)
    ScheduleChimeResponse = Struct.new(:chime, :schedule, keyword_init: true)

    OtpTransmission = Struct.new(:recipient, :sender_id, :sent_via, :status, :sent_at, keyword_init: true)
    OtpVerificationResult = Struct.new(:verdict, :detail, keyword_init: true)
    OtpVerificationAttempt = Struct.new(
      :id,
      :recipient,
      :presented_token,
      :attempted_at,
      :result,
      keyword_init: true
    )
    OtpTransaction = Struct.new(
      :id,
      :status,
      :full_message,
      :initiated_at,
      :expires_at,
      :canceled_at,
      :cancel_reason,
      :transmission,
      keyword_init: true
    )
    OtpCanceledTransaction = Struct.new(
      :id,
      :status,
      :full_message,
      :recipient,
      :sender,
      :mechanism,
      :gateway,
      :preferred_gateway,
      :created_at,
      :delivered_at,
      :verifiable_until,
      :canceled_at,
      :cancel_reason,
      keyword_init: true
    )
    InitiateOtpResponse = Struct.new(:transaction, :error, keyword_init: true)
    VerifyOtpResponse = Struct.new(:transaction, :verification_attempt, :error, keyword_init: true)
    LookupOtpResponse = Struct.new(:transaction, :error, keyword_init: true)
    CancelOtpResponse = Struct.new(:transaction, :error, keyword_init: true)

    BalanceAmount = Struct.new(:amount, keyword_init: true)
    BalanceBreakdown = Struct.new(
      :available,
      :pending,
      :reserved,
      :refund,
      :includes_transactions_before,
      keyword_init: true
    )
    BalancesResponse = Struct.new(:balances, keyword_init: true)

    BalanceTransaction = Struct.new(
      :id,
      :payment_id,
      :payout_id,
      :order_id,
      :amount,
      :created_at,
      :available_at,
      :paid_at,
      keyword_init: true
    )
    BalanceTransactionsPage = Struct.new(:number, :size, :transactions, keyword_init: true)
    BalanceTransactionsResponse = Struct.new(:page, keyword_init: true)

    FinancialAccountTypeSpec = Struct.new(:name, :label, :description, :subtypes, keyword_init: true)
    LegalEntityTypeSpec = Struct.new(:type, :name, :description, keyword_init: true)
    IDDocumentTypeSpec = Struct.new(:name, :label, :description, keyword_init: true)
    CountrySpecification = Struct.new(
      :country_code,
      :country_name,
      :currencies,
      :payment_methods,
      :payout_schedules,
      :bt_aging_specs,
      :legal_entity_types,
      :financial_account_types,
      :id_document_types,
      keyword_init: true
    )
    CountrySpecificationsResponse = Struct.new(:countries, keyword_init: true)

    FinancialAccount = Struct.new(
      :id,
      :currency,
      :verification,
      :push_configuration,
      :pull_configuration,
      :archived_at,
      :created_at,
      :label,
      :type,
      :description,
      :reference,
      :wallet,
      :bank_account,
      :dosh_account,
      keyword_init: true
    )
    FinancialAccountResponse = Struct.new(:account, keyword_init: true)

    PaymentMethodObject = Struct.new(
      :id,
      :customer_id,
      :type,
      :issuer,
      :number,
      :created_at,
      :verified,
      :verified_at,
      :enabled,
      keyword_init: true
    )
    PaymentMethodTypeSetting = Struct.new(:type, :name, :description, :enabled, :confirms_use, keyword_init: true)
    PaymentMethodSettings = Struct.new(:mobile_money, :bank_account, :card, :motito, keyword_init: true)
    PaymentMethodResponse = Struct.new(:payment_method, keyword_init: true)
    PaymentMethodSettingsResponse = Struct.new(:settings, keyword_init: true)
    PaymentMethodVerificationResponse = Struct.new(:verification, keyword_init: true)
    PaymentMethodDeleteResponse = Struct.new(:deleted, :payment_method_id, keyword_init: true)

    PaymentResponse = Struct.new(
      :payment_id,
      :order_id,
      :status,
      :requires_confirmation,
      :confirmation_sent,
      keyword_init: true
    )

    OrderCustomer = Struct.new(:id, :name, :email_address, :phone_number, :created_at, keyword_init: true)
    OrderLineItemGroup = Struct.new(:line_items, :total, keyword_init: true)
    OrderPaymentAttempt = Struct.new(
      :payment_method_type,
      :payment_method_id,
      :reference,
      :status,
      :initiated_at,
      :succeeded_at,
      :failed_at,
      keyword_init: true
    )
    OrderPaymentNextAction = Struct.new(:type, :confirm_payment, :execute, :redirect, keyword_init: true)
    OrderPayment = Struct.new(
      :id,
      :status,
      :statement_descriptor,
      :amount,
      :payment_method,
      :latest_attempt,
      :next_action,
      :initiated_at,
      :executed_at,
      :paid_at,
      :balance_transaction,
      keyword_init: true
    )
    InvoiceUrl = Struct.new(:url, keyword_init: true)
    OrderInvoiceFormat = Struct.new(:web, :pdf, keyword_init: true)
    OrderInvoice = Struct.new(:id, :deliveries, :format, keyword_init: true)
    Order = Struct.new(
      :id,
      :number,
      :status,
      :customer,
      :line_item_group,
      :payment,
      :invoice,
      :shipping,
      :initiated_at,
      :sealed_at,
      :completed_at,
      keyword_init: true
    )
    OrderCreateResponse = Struct.new(:order, keyword_init: true)
    OrderResponse = Struct.new(:order, keyword_init: true)
    OrderPage = Struct.new(:number, :size, :orders, keyword_init: true)
    OrderPageResponse = Struct.new(:page, keyword_init: true)

    PayoutSettings = Struct.new(:fx_enabled, :destinations, :schedule, keyword_init: true)
    PayoutSchedule = Struct.new(:name, :type, :interval, :schedule_on, :description, :aging_spec, keyword_init: true)
    PayoutAgingSpec = Struct.new(:t_plus, :label, :abide, keyword_init: true)
    PayoutSettingsResponse = Struct.new(:settings, keyword_init: true)
    PayoutSummary = Struct.new(
      :id,
      :application_id,
      :destination_id,
      :amount,
      :status,
      :initiated_by,
      :latest_attempt_id,
      :latest_error,
      :initiated_at,
      :executed_at,
      :expected_at,
      :succeeded_at,
      :balance_transaction_ids,
      keyword_init: true
    )
    PayoutPage = Struct.new(:number, :size, :payouts, keyword_init: true)
    PayoutPageResponse = Struct.new(:page, keyword_init: true)

    TYPE_MAP = {
      FinancialAccountResponse => { account: FinancialAccount },
      FinancialAccount => { wallet: WalletConfig, bank_account: BankAccountConfig },
      WalletConfig => { mobile_money: WalletMobileMoney },
      BankAccountConfig => { ghana_bank_account: GhanaBankAccount },
      GhanaBankAccount => { owner: BankAccountOwner },
      BankAccountOwner => { address: BankAccountOwnerAddress },
      OrderCreateResponse => { order: Order },
      OrderResponse => { order: Order },
      Order => { customer: OrderCustomer, line_item_group: OrderLineItemGroup, payment: OrderPayment, invoice: OrderInvoice },
      OrderLineItemGroup => { line_items: LineItem, total: Money },
      LineItem => { product: ProductDetails, fee: FeeDetails, shipping: ShippingDetails },
      OrderPayment => { amount: Money, payment_method: PaymentMethodObject, latest_attempt: OrderPaymentAttempt, next_action: OrderPaymentNextAction },
      OrderInvoice => { format: OrderInvoiceFormat },
      OrderInvoiceFormat => { web: InvoiceUrl, pdf: InvoiceUrl },
      OrderPageResponse => { page: OrderPage },
      OrderPage => { orders: Order },
      PaymentMethodResponse => { payment_method: PaymentMethodObject },
      PaymentMethodSettingsResponse => { settings: PaymentMethodSettings },
      PaymentMethodVerificationResponse => {},
      PaymentMethodDeleteResponse => {},
      PaymentResponse => {},
      PaymentMethodSettings => {
        mobile_money: PaymentMethodTypeSetting,
        bank_account: PaymentMethodTypeSetting,
        card: PaymentMethodTypeSetting,
        motito: PaymentMethodTypeSetting
      },
      ChimeResponse => { chime: Chime },
      ScheduleChimeResponse => { chime: Chime },
      Chime => { recipient: ChimeRecipient, transmission: ChimeTransmission },
      ChimeRecipient => { phone: ChimeRecipientPhone, email: ChimeRecipientEmail },
      InitiateOtpResponse => { transaction: OtpTransaction },
      VerifyOtpResponse => { transaction: OtpTransaction, verification_attempt: OtpVerificationAttempt },
      LookupOtpResponse => { transaction: OtpTransaction },
      CancelOtpResponse => { transaction: OtpCanceledTransaction },
      OtpTransaction => { transmission: OtpTransmission },
      OtpVerificationAttempt => { result: OtpVerificationResult },
      BalancesResponse => { balances: BalanceBreakdown },
      BalanceBreakdown => {
        available: BalanceAmount,
        pending: BalanceAmount,
        reserved: BalanceAmount,
        refund: BalanceAmount
      },
      BalanceTransactionsResponse => { page: BalanceTransactionsPage },
      BalanceTransactionsPage => { transactions: BalanceTransaction },
      BalanceTransaction => { amount: Money },
      CountrySpecificationsResponse => { countries: CountrySpecification },
      CountrySpecification => {
        legal_entity_types: LegalEntityTypeSpec,
        financial_account_types: FinancialAccountTypeSpec,
        id_document_types: IDDocumentTypeSpec
      },
      PayoutSettingsResponse => { settings: PayoutSettings },
      PayoutSettings => { schedule: PayoutSchedule },
      PayoutSchedule => { aging_spec: PayoutAgingSpec },
      PayoutPageResponse => { page: PayoutPage },
      PayoutPage => { payouts: PayoutSummary },
      PayoutSummary => { amount: Money }
    }.freeze

    def self.deserialize(value, klass)
      data = unwrap(value)
      coerce(data, klass)
    end

    def self.coerce(value, klass)
      return nil if value.nil?
      return value unless klass.is_a?(Class) && klass < Struct

      data = unwrap(value)
      return klass.new unless data.is_a?(Hash)

      mapping = TYPE_MAP[klass] || {}
      attrs = klass.members.each_with_object({}) do |member, output|
        key = member.to_s
        raw = data.key?(key) ? data[key] : data[member]
        mapped = mapping[member]
        if mapped
          if raw.is_a?(Array)
            output[member] = raw.map { |item| coerce(item, mapped) }
          elsif raw.is_a?(Hash) && mapped.is_a?(Class) && mapped < Struct
            mapped_keys = mapped.members.map(&:to_s)
            if (raw.keys & mapped_keys).empty?
              output[member] = raw.transform_values { |item| coerce(item, mapped) }
            else
              output[member] = coerce(raw, mapped)
            end
          else
            output[member] = coerce(raw, mapped)
          end
        else
          output[member] = raw
        end
      end
      klass.new(**attrs)
    end

    def self.unwrap(value)
      return value.to_h if value.respond_to?(:to_h) && !value.is_a?(Hash)
      value
    end
  end
end
