# frozen_string_literal: true
# typed: strict

require "inttegro"

client = T.let(Inttegro::Client.new(api_key: "test_key"), Inttegro::Client)

T.assert_type!(client.orders, Inttegro::Resources::Orders)
create_request = T.let(
  Inttegro::CreateOrderExistingCustomer.new(customer_id: "cu_example", line_items: []),
  Inttegro::CreateOrderExistingCustomer
)
created_order = T.let(client.orders.create(create_request), Inttegro::Order)
T.assert_type!(created_order.id, String)
T.assert_type!(client.customers.page, Inttegro::PageCustomersResponse)
T.assert_type!(client.payment_methods.settings, Inttegro::GetPaymentMethodSettingsResponse)
T.assert_type!(
  client.payment_methods.deactivate(payment_method_id: "pm_example"),
  Inttegro::DisactivatePaymentMethodResponse
)
T.assert_type!(client.payouts.enable, Inttegro::EnableAutomaticPayoutsResponse)
T.assert_type!(client.otp.initialize_session({}), Inttegro::InitiateOTPResponse)
T.assert_type!(client.files.contents(file_id: "file_example"), Inttegro::FileDownload)

T.assert_type!(
  Inttegro::Money.new(currency: "ghs", value: 1_000),
  Inttegro::Money
)
T.assert_type!(Inttegro::ProductType::DIGITAL, Inttegro::ProductType)
