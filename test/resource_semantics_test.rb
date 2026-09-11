# frozen_string_literal: true

require "test_helper"

class InttegroResourceSemanticsTest < Minitest::Test
  def test_payment_and_order_questions
    payment = Inttegro::Payment.from_hash(
      "amount" => { "currency" => "ghs", "value" => 1_000 },
      "id" => "py_123",
      "initiated_at" => "2026-09-09T12:00:00Z",
      "next_action" => { "type" => "redirect" },
      "statement_descriptor" => "INTTEGRO",
      "status" => "requires_action"
    )
    order = Inttegro::Order.from_hash(
      "customer" => { "guest" => false, "id" => "cu_123", "name" => "Ama" },
      "id" => "or_123",
      "initiated_at" => "2026-09-09T12:00:00Z",
      "payment" => payment.serialize,
      "status" => "requires_payment"
    )

    assert payment.requires_action?
    refute payment.terminal?
    assert_equal Inttegro::Payment::NextActionType::REDIRECT, payment.required_action&.type
    assert order.requires_payment?
    assert_equal Inttegro::Payment::NextActionType::REDIRECT, order.required_payment_action&.type
  end

  def test_catalog_and_payment_method_questions
    intent = Inttegro::PurchaseIntent.from_hash(
      "allow_variants" => false,
      "created_at" => "2026-09-09T12:00:00Z",
      "id" => "sale_123",
      "quantity" => { "min" => 1 },
      "status" => "used",
      "usage" => {
        "order" => { "created_at" => "2026-09-09T12:01:00Z", "id" => "or_123" },
        "single_use" => true
      }
    )
    product = Inttegro::Product.from_hash(
      "active" => true,
      "created_at" => "2026-09-09T12:00:00Z",
      "id" => "prod_123",
      "name" => "Tea guide",
      "published_at" => "2026-09-09T12:00:00Z",
      "type" => "digital"
    )
    method = Inttegro::PaymentMethod.from_hash(
      "active" => true,
      "created_at" => "2026-09-09T12:00:00Z",
      "customer_id" => "cu_123",
      "id" => "pm_123",
      "type" => "mobile_money",
      "verified_at" => "2026-09-09T12:00:00Z"
    )

    assert intent.single_use?
    assert_equal "or_123", intent.used_order_id
    assert product.published?
    assert product.ever_published?
    assert method.verified?
    assert method.reusable?
  end
end
