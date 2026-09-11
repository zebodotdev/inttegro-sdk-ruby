# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "type_setting"

module Inttegro
  class PaymentMethod
    # Payment method acceptance configuration for an application
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] mobile_money
    #   Settings for a specific payment method type
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `mobile_money`.
    #   @return [Inttegro::PaymentMethod::TypeSetting, nil]
    #
    # @!attribute [r] bank_account
    #   Settings for a specific payment method type
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `bank_account`.
    #   @return [Inttegro::PaymentMethod::TypeSetting, nil]
    #
    # @!attribute [r] card
    #   Settings for a specific payment method type
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `card`.
    #   @return [Inttegro::PaymentMethod::TypeSetting, nil]
    #
    # @!attribute [r] motito
    #   Settings for a specific payment method type
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `motito`.
    #   @return [Inttegro::PaymentMethod::TypeSetting, nil]
    class Settings < T::Struct
      const :mobile_money, T.nilable(Inttegro::PaymentMethod::TypeSetting), default: nil
      const :bank_account, T.nilable(Inttegro::PaymentMethod::TypeSetting), default: nil
      const :card, T.nilable(Inttegro::PaymentMethod::TypeSetting), default: nil
      const :motito, T.nilable(Inttegro::PaymentMethod::TypeSetting), default: nil
    end
  end
end
