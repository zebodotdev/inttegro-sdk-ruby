# frozen_string_literal: true
# typed: strict

require "commerce"

client = T.let(Commerce::Client.new(api_key: "test_key"), Commerce::Client)

T.assert_type!(client.orders, Commerce::Resources::Orders)
create_request = T.let(
  Commerce::Models::CreateOrderExistingCustomer.new(customer_id: "cu_example", line_items: []),
  Commerce::Models::CreateOrderExistingCustomer
)
created_order = T.let(client.orders.create(create_request), Commerce::Models::OrderResponse)
T.assert_type!(created_order.order, Commerce::Models::Order)
T.assert_type!(created_order.order.id, String)
T.assert_type!(client.customers.page, Commerce::Models::PageCustomersResponse)
T.assert_type!(client.payment_methods.settings, Commerce::Models::GetPaymentMethodSettingsResponse)
T.assert_type!(
  client.payment_methods.deactivate(payment_method_id: "pm_example"),
  Commerce::Models::DisactivatePaymentMethodResponse
)
T.assert_type!(client.payouts.enable, Commerce::Models::EnableAutomaticPayoutsResponse)
T.assert_type!(client.otp.initialize_session({}), Commerce::Models::InitiateOTPResponse)
T.assert_type!(client.files.contents(file_id: "file_example"), Commerce::FileDownload)

money = T.let(Commerce::Models::Money.new(currency: "ghs", value: 1_000), Commerce::Models::Money)
T.assert_type!(Commerce::Enums::ProductType::DIGITAL, Commerce::Enums::ProductType)
