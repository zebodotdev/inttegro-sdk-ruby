# frozen_string_literal: true

require "test_helper"

class InttegroEnumTypesTest < Minitest::Test
  def test_public_constants_are_wire_values
    refute Inttegro.const_defined?(:Enums, false)
    assert_equal "digital", Inttegro::ProductType::DIGITAL.serialize
    assert_equal "ghs", Inttegro::Money::Currency::GHS.serialize
    assert_equal "mtn", Inttegro::MobileMoneyNetwork::MTN.serialize
    assert_equal "requested_by_customer", Inttegro::RefundReason::REQUESTED_BY_CUSTOMER.serialize
    assert_includes Inttegro::UploadRequestStatus.values.map(&:serialize), "pending"
  end

  def test_amount_and_price_types_preserve_wire_shapes
    price = Inttegro::PriceParams.new(currency: Inttegro::Money::Currency::GHS, value: 3005)
    amount = Inttegro::Money::AmountParams.new(currency: Inttegro::Money::Currency::GHS, value: 3005)
    catalog = Inttegro::CatalogPriceParams.new(amount: amount, label: "Retail")

    assert_equal({ "currency" => "ghs", "value" => 3005 }, price.serialize)
    assert_equal(
      { "amount" => { "currency" => "ghs", "value" => 3005 }, "label" => "Retail" },
      catalog.serialize
    )
  end
end
