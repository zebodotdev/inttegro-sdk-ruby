# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

require_relative "generated/models"
require_relative "types"

module Commerce
  module Models
    extend T::Sig

    # Backward-compatible acronym spellings. New code should use the OpenAPI
    # names, which preserve acronyms exactly.
    InitiateOtpResponse = InitiateOTPResponse
    LookupOtpResponse = LookupOTPResponse
    VerifyOtpResponse = VerifyOTPResponse
    OtpTransaction = OTPTransaction
    OtpTransmission = OTPTransmission
    OtpVerificationAttempt = OTPVerificationAttempt

    # Backward-compatible response names whose schemas now have a single,
    # endpoint-specific OpenAPI name.
    BalancesResponse = BalanceSnapshotResponse
    BalanceTransactionsResponse = BalanceTransactionPageResponse
    CustomerPageResponse = PageCustomersResponse
    OrderPageResponse = PageOrdersResponse
    ProductPageResponse = PageProductsResponse
    ScheduleChimeResponse = ScheduleResponse
    CountrySpecificationsResponse = ListCountrySpecsResponse
    FinancialAccountResponse = LookupFinancialAccountResponse
    PaymentMethodResponse = LookupPaymentMethodResponse
    PaymentMethodSettingsResponse = GetPaymentMethodSettingsResponse
    PayoutSettingsResponse = GetPayoutSettingsResponse
    PayoutPageResponse = PagePayoutsResponse

    class PaymentMethodVerificationResponse < T::Struct
      const :verification, T.nilable(PaymentMethodObjectVerification), default: nil
    end

    class PaymentMethodDeleteResponse < T::Struct
      const :deleted, T::Boolean
      const :payment_method_id, String
    end

    class SetDefaultUnitPriceRequest < T::Struct
      const :product_id, String
      const :price_id, String
    end

    # /otp/cancel predates the public OpenAPI surface. Keep its SDK model typed
    # for compatibility without representing it as a documented operation.
    class OTPCanceledTransaction < T::Struct
      const :id, T.nilable(String), default: nil
      const :status, T.nilable(Commerce::Enums::OTPStatus), default: nil
      const :full_message, T.nilable(String), default: nil
      const :recipient, T.nilable(String), default: nil
      const :sender, T.nilable(String), default: nil
      const :mechanism, T.nilable(String), default: nil
      const :gateway, T.nilable(String), default: nil
      const :preferred_gateway, T.nilable(String), default: nil
      const :created_at, T.nilable(String), default: nil
      const :delivered_at, T.nilable(String), default: nil
      const :verifiable_until, T.nilable(String), default: nil
      const :canceled_at, T.nilable(String), default: nil
      const :cancel_reason, T.nilable(String), default: nil
    end

    class CancelOTPResponse < T::Struct
      const :transaction, T.nilable(OTPCanceledTransaction), default: nil
      const :error, T.nilable(Error), default: nil
    end

    OtpCanceledTransaction = OTPCanceledTransaction
    CancelOtpResponse = CancelOTPResponse

    class BalanceTransaction
      extend T::Sig

      sig { returns(T.nilable(String)) }
      def source_id
        payment = payment_id
        refund = refund_id
        if type == Commerce::Enums::BalanceTransactionType::PAYMENT && payment && !payment.empty? && refund.nil?
          return payment
        end
        if type == Commerce::Enums::BalanceTransactionType::REFUND && refund && !refund.empty? && payment.nil?
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
end
