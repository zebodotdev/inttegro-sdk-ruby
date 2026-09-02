# frozen_string_literal: true

require "test_helper"

class InttegroEnumTypesTest < Minitest::Test
  def test_public_constants_are_wire_values
    refute Inttegro.const_defined?(:Enums, false)
    assert_equal "digital", Inttegro::ProductType::DIGITAL.serialize
    assert_equal "requested_by_customer", Inttegro::RefundReason::REQUESTED_BY_CUSTOMER.serialize
    assert_includes Inttegro::UploadRequestStatus.values.map(&:serialize), "pending"
  end
end
