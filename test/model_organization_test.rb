# frozen_string_literal: true

require "test_helper"

class InttegroModelOrganizationTest < Minitest::Test
  def test_primary_resources_own_their_related_types
    assert_operator Inttegro::Product, :<, T::Struct
    assert_operator Inttegro::Product::Dimensions, :<, T::Struct
    assert_operator Inttegro::Payment::NextAction, :<, T::Struct
    assert_operator Inttegro::Order::Page, :<, T::Struct
    assert_operator Inttegro::PurchaseIntent::Activity, :<, T::Struct
    assert_operator Inttegro::PaymentMethod::Verification, :<, T::Struct

    assert_operator Inttegro::Product::Type, :<, T::Enum
    assert_operator Inttegro::Payment::Status, :<, T::Enum
    assert_operator Inttegro::Refund::Reason, :<, T::Enum
  end

  def test_removed_flat_constants_are_not_compatibility_aliases
    refute Inttegro.const_defined?(:ProductType, false)
    refute Inttegro.const_defined?(:PaymentStatus, false)
    refute Inttegro.const_defined?(:RefundReason, false)
    refute Inttegro.const_defined?(:ProductDimensions, false)
    refute Inttegro.const_defined?(:PaymentNextAction, false)
    refute Inttegro.const_defined?(:PurchaseIntentActivity, false)
    refute Inttegro.const_defined?(:PaymentMethodVerification, false)
  end

  def test_generated_manifests_only_load_split_type_files
    root = File.expand_path("../lib/inttegro", __dir__)
    models = File.read(File.join(root, "generated/models.rb"))
    enums = File.read(File.join(root, "generated/enums.rb"))

    refute_match(/^\s*class\s/, models)
    refute_match(/^\s*class\s/, enums)
    assert_includes models, 'require_relative "../product/product"'
    assert_includes enums, 'require_relative "../payment/status"'
  end
end
