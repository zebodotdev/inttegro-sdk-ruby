# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"
require "set"
require "time"

require_relative "generated/models"
require_relative "types"

module Inttegro
  extend T::Sig

  TEMPORAL_FIELDS = T.let(%w[
    after archived_at as_of at attempted_at available_at canceled_at checked_at
    claimed_at completed_at created_after created_at created_before deleted_at
    delivered_at disconnected_at due_at enabled_at execute_after executed_at
    expected_at expired_at expires_at expires_on failed_at fulfilled_at inactive_at
    includes_transactions_before initialized_at initiated_at issued_at last_accessed_at
    last_attempted_at last_email_event_at last_used_at occurred_at paid_at payment_due_at
    processing_at published_at queued_at reviewed_at revoked_at scheduled_at sealed_at
    send_after sent_at succeeded_at supplied_at suppressed_at token_sent_at updated_at
    uploading_at valid_until verified_at
  ].to_set.freeze, T::Set[String])
  OPAQUE_TIMESTAMP_CONTAINERS = T.let(%w[
    custom_data details headers json_ld mandate metadata variables
  ].to_set.freeze, T::Set[String])

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
      !id.empty? && !order_id.empty? && valid_source?
    end
  end

  sig { params(value: Object, klass: T::Class[T::Struct]).returns(T::Struct) }
  def self.deserialize(value, klass)
    data = stringify_json_keys(value, decode_timestamps: true)
    raise TypeError, "expected an object for #{klass}, got #{data.class}" unless data.is_a?(Hash)

    T.cast(klass, T.class_of(T::Struct)).from_hash(data)
  end

  sig { params(value: Object, decode_timestamps: T::Boolean).returns(Object) }
  def self.stringify_json_keys(value, decode_timestamps: false)
    case value
    when T::Struct
      stringify_json_keys(value.serialize, decode_timestamps: decode_timestamps)
    when T::Enum
      value.serialize
    when Hash
      value.each_with_object({}) do |(key, item), output|
        field = key.to_s
        child_decode = decode_timestamps && !OPAQUE_TIMESTAMP_CONTAINERS.include?(field)
        output[field] = if child_decode && TEMPORAL_FIELDS.include?(field) && item.is_a?(String)
          unless item.match?(/(?:Z|[+-]\d{2}:\d{2})\z/)
            raise ArgumentError, "timestamp #{field} must include a UTC offset"
          end
          Time.iso8601(item)
        else
          stringify_json_keys(item, decode_timestamps: child_decode)
        end
      end
    when Array
      value.map { |item| stringify_json_keys(item, decode_timestamps: decode_timestamps) }
    when Time
      value.iso8601(9)
    else
      value
    end
  end
  private_class_method :stringify_json_keys
end
