# frozen_string_literal: true
# typed: strict

require "inttegro"

client = T.let(Inttegro::Client.new(api_key: "test_key"), Inttegro::Client)

T.assert_type!(client.orders, Inttegro::Resources::Orders)
create_request = T.let(
  Inttegro::Models::CreateOrderExistingCustomer.new(customer_id: "cu_example", line_items: []),
  Inttegro::Models::CreateOrderExistingCustomer
)
created_order = T.let(client.orders.create(create_request), Inttegro::Models::OrderResponse)
T.assert_type!(created_order.order, Inttegro::Models::Order)
T.assert_type!(created_order.order.id, String)
T.assert_type!(client.customers.page, Inttegro::Models::PageCustomersResponse)
T.assert_type!(client.payment_methods.settings, Inttegro::Models::GetPaymentMethodSettingsResponse)
T.assert_type!(
  client.payment_methods.deactivate(payment_method_id: "pm_example"),
  Inttegro::Models::DisactivatePaymentMethodResponse
)
T.assert_type!(client.payouts.enable, Inttegro::Models::EnableAutomaticPayoutsResponse)
T.assert_type!(client.otp.initialize_session({}), Inttegro::Models::InitiateOTPResponse)
T.assert_type!(client.files.contents(file_id: "file_example"), Inttegro::FileDownload)

T.assert_type!(
  Inttegro::Models::Money.new(currency: "ghs", value: 1_000),
  Inttegro::Models::Money
)
T.assert_type!(Inttegro::Enums::ProductType::DIGITAL, Inttegro::Enums::ProductType)
