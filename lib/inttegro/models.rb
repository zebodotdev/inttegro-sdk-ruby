# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

require_relative "generated/models"
require_relative "types"

module Inttegro
  extend T::Sig

  # Amount primitives live under Money so the namespace can grow to include
  # currency conversion and formatting helpers without treating money as a
  # single value type.
  module Money
    Amount = Inttegro::Amount
    AmountParams = Inttegro::AmountParams
    Currency = Inttegro::Currency
  end

  # Wallet variants used by financial accounts.
  module Wallets
    Wallet = Inttegro::FinancialAccountWallet
    MobileMoney = Inttegro::FinancialAccountWalletMobileMoney
    UpdatedWallet = Inttegro::UpdatedFinancialAccountWallet
    WalletParams = Inttegro::FinancialAccountWalletRequestWallet
    MobileMoneyParams = Inttegro::FinancialAccountWalletRequestWalletMobileMoney
    WalletType = Inttegro::WalletType
  end

  # Bank-account variants used by financial accounts. Payment-method bank
  # snapshots remain in the payment-method domain.
  module BankAccounts
    BankAccount = Inttegro::FinancialAccountBank
    CreatedBankAccount = Inttegro::CreatedFinancialAccountBank
    UpdatedBankAccount = Inttegro::UpdatedFinancialAccountBank
    GhanaBankAccount = Inttegro::GhanaBankAccount
    CreatedGhanaBankAccount = Inttegro::CreatedGhanaBankAccount
    UpdatedGhanaBankAccount = Inttegro::UpdatedGhanaBankAccount
    Owner = Inttegro::FinancialAccountOwner
    CreatedOwner = Inttegro::CreatedFinancialAccountOwner
    UpdatedOwner = Inttegro::UpdatedFinancialAccountOwner
    OwnerAddress = Inttegro::FinancialAccountAddress
    CreatedOwnerAddress = Inttegro::CreatedFinancialAccountAddress
    UpdatedOwnerAddress = Inttegro::UpdatedFinancialAccountAddress
    BankAccountParams = Inttegro::FinancialAccountBankRequestBankAccount
    GhanaBankAccountParams = Inttegro::FinancialAccountBankRequestBankAccountGhanaBankAccount
    BankAccountType = Inttegro::BankAccountType
  end

  # Currency identifiers serialize to lowercase wire values while accepting
  # legacy uppercase response values during deserialization.
  class Currency
    class << self
      extend T::Sig

      sig { params(value: String).returns(Inttegro::Currency) }
      def deserialize(value)
        super(value.strip.downcase)
      end
    end
  end

  # Backward-compatible acronym spellings for domain objects.
  OtpTransaction = OTPTransaction
  OtpTransmission = OTPTransmission
  OtpVerificationAttempt = OTPVerificationAttempt

  class PaymentMethodDeletion < T::Struct
    const :deleted, T::Boolean
    const :payment_method_id, String
  end

  class SetDefaultUnitPriceRequest < T::Struct
    const :product_id, String
    const :price_id, String
  end

  class BalanceTransaction
    extend T::Sig

    sig { returns(T.nilable(String)) }
    def source_id
      payment = payment_id
      refund = refund_id
      if type == Inttegro::BalanceTransactionType::PAYMENT && payment && !payment.empty? && refund.nil?
        return payment
      end
      if type == Inttegro::BalanceTransactionType::REFUND && refund && !refund.empty? && payment.nil?
        return refund
      end

      nil
    end

    sig { returns(T::Boolean) }
    def valid_source?
      !source_id.nil?
    end

    sig { returns(T::Boolean) }
    def valid?
      !id.empty? && !order_id.empty? && !created_at.empty? && valid_source?
    end
  end

  sig { params(value: Object, klass: T::Class[T::Struct]).returns(T::Struct) }
  def self.deserialize(value, klass)
    data = stringify_json_keys(value)
    raise TypeError, "expected an object for #{klass}, got #{data.class}" unless data.is_a?(Hash)

    T.cast(klass, T.class_of(T::Struct)).from_hash(data)
  end

  sig { params(value: Object).returns(Object) }
  def self.stringify_json_keys(value)
    case value
    when T::Struct
      stringify_json_keys(value.serialize)
    when T::Enum
      value.serialize
    when Hash
      value.each_with_object({}) do |(key, item), output|
        output[key.to_s] = stringify_json_keys(item)
      end
    when Array
      value.map { |item| stringify_json_keys(item) }
    else
      value
    end
  end
  private_class_method :stringify_json_keys
end
