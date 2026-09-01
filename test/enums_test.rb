# frozen_string_literal: true

require "test_helper"

class InttegroEnumsTest < Minitest::Test
  def test_public_constants_are_wire_values
    assert_equal "digital", Inttegro::Enums::ProductType::DIGITAL.serialize
    assert_equal "requested_by_customer", Inttegro::Enums::RefundReason::REQUESTED_BY_CUSTOMER.serialize
    assert_includes Inttegro::Enums::UploadRequestStatus.values.map(&:serialize), "pending"
  end
end
