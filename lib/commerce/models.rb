# frozen_string_literal: true

module Commerce
  module Models
    PullPushConfig = Struct.new(:enabled, :enabled_at, :mandate, keyword_init: true)

    WalletMobileMoney = Struct.new(:id, :account_number, :network, keyword_init: true)
    WalletConfig = Struct.new(:type, :mobile_money, keyword_init: true)

    BankAccountOwnerAddress = Struct.new(
      :id,
      :application_id,
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
    GhanaBankAccount = Struct.new(
      :bank_name,
      :branch,
      :number,
      :sort_code,
      :swift_code,
      :holder,
      keyword_init: true
    )
    BankAccountConfig = Struct.new(:id, :type, :ghana_bank_account, keyword_init: true)

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
      :custom_data,
      :owner,
      keyword_init: true
    )
    FinancialAccountLookupRequest = Struct.new(:account_id, keyword_init: true)
    FinancialAccountArchiveRequest = Struct.new(:account_id, keyword_init: true)
    FinancialAccountVerifyRequest = Struct.new(:account_id, :token, keyword_init: true)

    RequestMeta = Struct.new(:idempotency_key, keyword_init: true)
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

    CreateCustomerRequest = Struct.new(
      :request_meta,
      :name,
      :title,
      :suffix,
      :reference,
      :email_address,
      :phone_number,
      :custom_data,
      keyword_init: true
    )
    LookupCustomerRequest = Struct.new(:customer_id, keyword_init: true)
    PageCustomersRequest = Struct.new(:page_number, :page_size, keyword_init: true)
    Customer = Struct.new(
      :id,
      :name,
      :title,
      :suffix,
      :reference,
      :email_address,
      :phone_number,
      :custom_data,
      :created_at,
      keyword_init: true
    )
    CustomerPage = Struct.new(:number, :size, :customers, keyword_init: true)
    CustomerResponse = Struct.new(:customer, keyword_init: true)
    CustomerPageResponse = Struct.new(:page, keyword_init: true)

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
    ProductCategory = Struct.new(:id, :name, :slug, keyword_init: true)
    ProductPrice = Struct.new(:amount, :currency, keyword_init: true)
    ProductPriceAmount = Struct.new(:currency, :value, keyword_init: true)
    ProductDefaultUnitPrice = Struct.new(
      :id,
      :product_id,
      :label,
      :about,
      :nominal,
      :created_at,
      :updated_at,
      :archived_at,
      keyword_init: true
    )
    ProductPriceSummary = Struct.new(:id, :label, :nominal, keyword_init: true)
    ProductShipmentDimensions = Struct.new(:length, :width, :height, :weight, keyword_init: true)
    ProductShipment = Struct.new(:type, :carrier, :dimensions, keyword_init: true)
    ProductMediaItem = Struct.new(:url, :type, keyword_init: true)
    CreateProductRequest = Struct.new(
      :type,
      :reference,
      :name,
      :description,
      :about,
      :tax_code,
      :category,
      :price,
      :shipment,
      :media,
      :attributes,
      :custom_data,
      keyword_init: true
    )
    LookupProductRequest = Struct.new(:product_id, keyword_init: true)
    AddProductPriceRequest = Struct.new(:product_id, :label, :about, :amount, :set_as_default, keyword_init: true)
    SetDefaultUnitPriceRequest = Struct.new(:product_id, :price_id, keyword_init: true)
    PageProductsRequest = Struct.new(:page_number, :page_size, keyword_init: true)
    UpdateProductRequest = Struct.new(
      :product_id,
      :reference,
      :name,
      :description,
      :about,
      :tax_code,
      :category,
      :price,
      :default_unit_price,
      :prices,
      :shipment,
      :media,
      :attributes,
      :custom_data,
      keyword_init: true
    )
    ProductActionRequest = Struct.new(:product_id, keyword_init: true)
    Product = Struct.new(
      :id,
      :application_id,
      :type,
      :reference,
      :name,
      :description,
      :about,
      :tax_code,
      :category,
      :price,
      :shipment,
      :media,
      :attributes,
      :custom_data,
      :active,
      :archived,
      :created_at,
      :updated_at,
      :archived_at,
      keyword_init: true
    )
    ProductResponse = Struct.new(:product, keyword_init: true)
    AddProductPriceResponse = Struct.new(:price, keyword_init: true)
    ProductPage = Struct.new(:number, :size, :products, keyword_init: true)
    ProductPageResponse = Struct.new(:page, keyword_init: true)
    CreatePriceRequest = Struct.new(
      :product_id,
      :label,
      :about,
      :currency,
      :amount,
      keyword_init: true
    )
    LookupPriceRequest = Struct.new(:price_id, keyword_init: true)
    UpdatePriceRequest = Struct.new(:price_id, :product_id, :label, :about, keyword_init: true)
    PriceNominal = Struct.new(:currency, :value, :sign, keyword_init: true)
    Price = Struct.new(
      :id,
      :product_id,
      :label,
      :about,
      :nominal,
      :created_at,
      :updated_at,
      :archived_at,
      keyword_init: true
    )
    PriceResponse = Struct.new(:price, keyword_init: true)
    FeeDetails = Struct.new(:id, :label, :tax_code, :description, :custom_data, :amount, keyword_init: true)
    ShippingDetails = Struct.new(:id, :tax_code, :custom_data, :fee, keyword_init: true)
    LineItem = Struct.new(:type, :product, :fee, :shipping, keyword_init: true)

    OrderPayoutFinancialAccount = Struct.new(:type, :wallet, :bank_account, :dosh_account, keyword_init: true)
    OrderPayoutDestination = Struct.new(:financial_account_id, :financial_account_data, keyword_init: true)
    OrderPayoutSettings = Struct.new(:destination, :enable_fx, keyword_init: true)
    PayoutConfigurationDestination = Struct.new(:financial_account_id, keyword_init: true)
    PayoutConfiguration = Struct.new(:destination, :enable_fx, keyword_init: true)

    MobileMoney = Struct.new(:network, :account_number, keyword_init: true)
    PaymentMethodData = Struct.new(:type, :mobile_money, keyword_init: true)

    OrderCreateRequest = Struct.new(
      :request_meta,
      :customer_data,
      :customer_id,
      :payment_method_id,
      :payment_method_data,
      :statement_descriptor,
      :statement_descriptor_prefix,
      :execute_payment,
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
    OrderPayRequest = Struct.new(:order_id, :request_meta, :payment_method_id, :payment_method_data, :paid_out_of_band, keyword_init: true)
    OrderConfirmPaymentRequest = Struct.new(:order_id, :request_meta, :token, keyword_init: true)
    OrderRequestConfirmationRequest = Struct.new(:order_id, :request_meta, keyword_init: true)
    OrderFinalizeRequest = Struct.new(:order_id, :request_meta, keyword_init: true)
    OrderCompleteRequest = Struct.new(:order_id, :paid_out_of_band, keyword_init: true)
    OrderCancelRequest = Struct.new(:order_id, :request_meta, keyword_init: true)
    OrderRefundRequest = Struct.new(:order_id, keyword_init: true)
    OrderPageRequest = Struct.new(:page_number, :page_size, keyword_init: true)

    PaymentMethodTokenizeRequest = Struct.new(:request_meta, :customer_id, :payment_method_data, :verify_immediately, keyword_init: true)
    PaymentMethodVerifyRequest = Struct.new(:request_meta, :payment_method_id, keyword_init: true)
    PaymentMethodConfirmVerificationRequest = Struct.new(:payment_method_id, :token, keyword_init: true)
    PaymentMethodLookupRequest = Struct.new(:payment_method_id, keyword_init: true)
    PaymentMethodDeleteRequest = Struct.new(:request_meta, :payment_method_id, keyword_init: true)

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
    ScheduleChimeResponse = Struct.new(:scheduled_chime, keyword_init: true)

    ScheduleLookupRequest = Struct.new(:schedule_id, keyword_init: true)
    ScheduleCancelRequest = Struct.new(:schedule_id, keyword_init: true)
    ScheduleError = Struct.new(:recipient, :fix_code, :type, keyword_init: true)
    ScheduledChime = Struct.new(
      :id,
      :recipients,
      :full_message,
      :sender_id,
      :purpose,
      :send_after,
      :created_at,
      :executed_at,
      keyword_init: true
    )
    ScheduleDetail = Struct.new(
      :id,
      :recipients,
      :content,
      :sender_id,
      :purpose,
      :send_after,
      :created_at,
      :executed_at,
      :canceled_at,
      :errors,
      :chime_ids,
      keyword_init: true
    )
    ScheduleLookupResponse = Struct.new(:scheduled_chime, keyword_init: true)
    ScheduleCancelResponse = Struct.new(:scheduled_chime, keyword_init: true)

    BroadcastChimeRequest = Struct.new(
      :recipients,
      :message_template,
      :service_name,
      :sender,
      :purpose,
      :preferred_gateway,
      :idempotency_key,
      keyword_init: true
    )
    BroadcastResponse = Struct.new(:broadcast_id, :status, :recipients_count, :queued_at, keyword_init: true)

    LookupBroadcastRequest = Struct.new(:broadcast_id, keyword_init: true)
    CancelBroadcastRequest = Struct.new(:broadcast_id, keyword_init: true)
    BroadcastError = Struct.new(:recipient, :fix_code, :type, keyword_init: true)
    BroadcastDetail = Struct.new(
      :id,
      :recipients,
      :content,
      :sender_id,
      :purpose,
      :send_after,
      :created_at,
      :executed_at,
      :canceled_at,
      :errors,
      :chime_ids,
      keyword_init: true
    )
    LookupBroadcastResponse = Struct.new(:broadcast, keyword_init: true)
    BroadcastCancelResponse = Struct.new(:broadcast, keyword_init: true)

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
      :payout_configuration,
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
      :disconnected_at,
      :created_at,
      :label,
      :type,
      :description,
      :reference,
      :custom_data,
      :owner,
      :wallet,
      :bank_account,
      :dosh_account,
      keyword_init: true
    )

    FinancialAccountUpdateRequest = Struct.new(
      :account_id,
      :label,
      :description,
      :reference,
      :custom_data,
      :owner,
      keyword_init: true
    )

    FinancialAccountToggleRequest = Struct.new(:account_id, :unset_as_payout_destination, keyword_init: true)
    FinancialAccountResponse = Struct.new(:account, keyword_init: true)

    PaymentMethodMobileMoney = Struct.new(:account_number, :network, keyword_init: true)
    PaymentMethodBankAccountGhana = Struct.new(
      :branch,
      :name,
      :account_number,
      :sort_code,
      :swift_code,
      keyword_init: true
    )
    PaymentMethodBankAccount = Struct.new(:ghana_bank_account, :type, keyword_init: true)
    PaymentMethodCardIssuer = Struct.new(:email_address, :name, :phone_number, :type, keyword_init: true)
    PaymentMethodCardOwner = Struct.new(:email_address, :name, :phone_number, keyword_init: true)
    PaymentMethodCard = Struct.new(:brand, :expires_on, :issuer, :owner, :type, keyword_init: true)
    PaymentMethodVerification = Struct.new(
      :completed_at,
      :initiated_at,
      :mechanism,
      :request_id,
      :type,
      keyword_init: true
    )
    PaymentMethodObject = Struct.new(
      :id,
      :customer_id,
      :type,
      :mobile_money,
      :bank_account,
      :card,
      :verification,
      :custom_data,
      :expires_on,
      :created_at,
      :verified,
      :verified_at,
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
      :payout_configuration,
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
      :max_amount,
      :status,
      :initiated_by,
      :execute_after,
      :scheduled_at,
      :canceled_at,
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
    CancelPayoutResponse = Struct.new(:payout, keyword_init: true)

    TYPE_MAP = {
      FinancialAccountResponse => { account: FinancialAccount },
      CustomerResponse => { customer: Customer },
      CustomerPageResponse => { page: CustomerPage },
      CustomerPage => { customers: Customer },
      ProductResponse => { product: Product },
      AddProductPriceResponse => { price: ProductDefaultUnitPrice },
      ProductPageResponse => { page: ProductPage },
      ProductPage => { products: Product },
      PriceResponse => { price: Price },
      Product => {
        category: ProductCategory,
        price: ProductPrice,
        default_unit_price: ProductDefaultUnitPrice,
        prices: ProductPriceSummary,
        shipment: ProductShipment
      },
      ProductDefaultUnitPrice => { nominal: ProductPriceAmount },
      ProductPriceSummary => { nominal: ProductPriceAmount },
      Price => { nominal: PriceNominal },
      ProductShipment => { dimensions: ProductShipmentDimensions },
      FinancialAccount => {
        wallet: WalletConfig,
        bank_account: BankAccountConfig,
        pull_configuration: PullPushConfig,
        push_configuration: PullPushConfig,
        owner: BankAccountOwner
      },
      ProductDetails => { price: Money },
      WalletConfig => { mobile_money: WalletMobileMoney },
      BankAccountConfig => { ghana_bank_account: GhanaBankAccount },
      GhanaBankAccount => { holder: BankAccountOwner },
      BankAccountOwner => { address: BankAccountOwnerAddress },
      OrderCreateResponse => { order: Order },
      OrderResponse => { order: Order },
      Order => { customer: OrderCustomer, line_item_group: OrderLineItemGroup, payment: OrderPayment, invoice: OrderInvoice },
      OrderLineItemGroup => { line_items: LineItem, total: Money },
      LineItem => { product: ProductDetails, fee: FeeDetails, shipping: ShippingDetails },
      OrderPayment => {
        amount: Money,
        payment_method: PaymentMethodObject,
        latest_attempt: OrderPaymentAttempt,
        next_action: OrderPaymentNextAction,
        payout_configuration: PayoutConfiguration
      },
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
      PaymentMethodObject => {
        mobile_money: PaymentMethodMobileMoney,
        bank_account: PaymentMethodBankAccount,
        card: PaymentMethodCard,
        verification: PaymentMethodVerification
      },
      PaymentMethodBankAccount => { ghana_bank_account: PaymentMethodBankAccountGhana },
      PaymentMethodCard => {
        issuer: PaymentMethodCardIssuer,
        owner: PaymentMethodCardOwner
      },
      ChimeResponse => { chime: Chime },
      ScheduleChimeResponse => { scheduled_chime: ScheduledChime },
      ScheduleLookupResponse => { scheduled_chime: ScheduleDetail },
      ScheduleCancelResponse => { scheduled_chime: ScheduleDetail },
      ScheduleDetail => { errors: ScheduleError },
      BroadcastResponse => {},
      LookupBroadcastResponse => { broadcast: BroadcastDetail },
      BroadcastCancelResponse => { broadcast: BroadcastDetail },
      BroadcastDetail => { errors: BroadcastError },
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
      BalanceTransaction => { amount: Money, payout_configuration: PayoutConfiguration },
      PayoutConfiguration => { destination: PayoutConfigurationDestination },
      CountrySpecificationsResponse => { countries: CountrySpecification },
      CountrySpecification => {
        legal_entity_types: LegalEntityTypeSpec,
        financial_account_types: FinancialAccountTypeSpec,
        id_document_types: IDDocumentTypeSpec
      },
      PayoutSettingsResponse => { settings: PayoutSettings },
      PayoutSettings => { schedule: PayoutSchedule },
      PayoutSchedule => { aging_spec: PayoutAgingSpec },
      CancelPayoutResponse => { payout: PayoutSummary },
      PayoutPageResponse => { page: PayoutPage },
      PayoutPage => { payouts: PayoutSummary },
      PayoutSummary => { amount: Money, max_amount: Money }
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
