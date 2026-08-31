# frozen_string_literal: true

require "test_helper"

class CommerceEnumsTest < Minitest::Test
  def test_public_constants_are_wire_values
    assert_equal "digital", Commerce::Enums::ProductType::DIGITAL
    assert_equal "requested_by_customer", Commerce::Enums::RefundReason::REQUESTED_BY_CUSTOMER
    assert_includes Commerce::Enums::UploadRequestStatus.values, "pending"
  end
end
