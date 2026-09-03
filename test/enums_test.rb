# frozen_string_literal: true

require "test_helper"

class InttegroEnumTypesTest < Minitest::Test
  def test_public_constants_are_wire_values
    refute Inttegro.const_defined?(:Enums, false)
    assert_equal "digital", Inttegro::ProductType::DIGITAL.serialize
    assert_equal "ghs", Inttegro::Money::Currency::GHS.serialize
    assert_equal Inttegro::Money::Currency::GHS, Inttegro::Currency.deserialize("GHS")
    assert_equal "mtn", Inttegro::MobileMoneyNetwork::MTN.serialize
    assert_equal "requested_by_customer", Inttegro::RefundReason::REQUESTED_BY_CUSTOMER.serialize
    assert_includes Inttegro::UploadRequestStatus.values.map(&:serialize), "pending"
  end

  def test_amount_and_price_types_preserve_wire_shapes
    price = Inttegro::PriceParams.new(currency: Inttegro::Money::Currency::GHS, value: 3005)
    amount = Inttegro::Money::AmountParams.new(currency: Inttegro::Money::Currency::GHS, value: 3005)
    catalog = Inttegro::CatalogPriceParams.new(amount: amount, label: "Retail")
    returned = Inttegro::CatalogPrice.from_hash(
      "id" => "pr_123",
      "active" => true,
      "nominal" => { "currency" => "ghs", "value" => 3005 },
      "product_id" => "prod_123",
      "created_at" => "2026-09-02T12:00:00Z"
    )

    assert_equal({ "currency" => "ghs", "value" => 3005 }, price.serialize)
    assert_equal(
      { "amount" => { "currency" => "ghs", "value" => 3005 }, "label" => "Retail" },
      catalog.serialize
    )
    assert_equal "prod_123", returned.product_id
  end

  def test_financial_account_variants_have_focused_modules
    wallet = Inttegro::Wallets::Wallet.new(
      id: "wallet_1",
      type: Inttegro::Wallets::WalletType::MOBILE_MONEY,
      mobile_money: Inttegro::Wallets::MobileMoney.new(
        account_number: "233200000000",
        network: Inttegro::MobileMoneyNetwork::MTN
      )
    )
    bank_account = Inttegro::BankAccounts::BankAccount.new(
      type: Inttegro::BankAccounts::BankAccountType::GHANA_BANK_ACCOUNT
    )

    assert_equal "mtn", wallet.mobile_money&.network&.serialize
    assert_equal "ghana_bank_account", bank_account.type.serialize
  end
end
