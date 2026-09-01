# frozen_string_literal: true

require "test_helper"

class CommerceEnumsTest < Minitest::Test
  def test_public_constants_are_wire_values
    assert_equal "digital", Commerce::Enums::ProductType::DIGITAL.serialize
    assert_equal "requested_by_customer", Commerce::Enums::RefundReason::REQUESTED_BY_CUSTOMER.serialize
    assert_includes Commerce::Enums::UploadRequestStatus.values.map(&:serialize), "pending"
  end
end
