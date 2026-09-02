# frozen_string_literal: true
# typed: strict
# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require "sorbet-runtime"
require_relative "enums"

module Inttegro
  module Models
    class ActivatePaymentMethodRequest < T::Struct
      const :payment_method_id, String
    end

    class PaymentMethodObjectBankAccountGhanaBankAccount < T::Struct
      const :branch, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :account_number, String
      const :sort_code, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end

    class PaymentMethodObjectBankAccount < T::Struct
      const :ghana_bank_account, T.nilable(Inttegro::Models::PaymentMethodObjectBankAccountGhanaBankAccount), default: nil
      const :type, Inttegro::Enums::BankAccountType
    end

    class PaymentMethodObjectMobileMoney < T::Struct
      const :account_number, String
      const :last4, String
      const :network, Inttegro::Enums::MobileMoneyNetwork
    end

    class PaymentMethodObjectOwnerAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, String
      const :line_1, T.nilable(String), default: nil
      const :line_2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end

    class PaymentMethodObjectOwner < T::Struct
      const :address, T.nilable(Inttegro::Models::PaymentMethodObjectOwnerAddress), default: nil
      const :name, String
    end

    class PaymentMethodObjectSupplied < T::Struct
      const :attempt_id, T.nilable(String), default: nil
      const :by, String
      const :channel, T.nilable(String), default: nil
      const :resource_id, T.nilable(String), default: nil
      const :resource_type, T.nilable(String), default: nil
      const :supplied_at, String
    end

    class PaymentMethodObjectVerification < T::Struct
      const :completed_at, T.nilable(String), default: nil
      const :initiated_at, String
      const :mechanism, T.nilable(String), default: nil
      const :request_id, String
      const :type, String
    end

    class PaymentMethodObject < T::Struct
      const :active, T::Boolean
      const :app_customer_local_fingerprint, T.nilable(String), default: nil
      const :app_local_fingerprint, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
      const :bank_account, T.nilable(Inttegro::Models::PaymentMethodObjectBankAccount), default: nil
      const :created_at, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :customer_id, String
      const :ephemeral, T.nilable(T::Boolean), default: nil
      const :expires_on, T.nilable(String), default: nil
      const :id, String
      const :mobile_money, T.nilable(Inttegro::Models::PaymentMethodObjectMobileMoney), default: nil
      const :owner, T.nilable(Inttegro::Models::PaymentMethodObjectOwner), default: nil
      const :type, Inttegro::Enums::PaymentMethodType
      const :supplied, T.nilable(Inttegro::Models::PaymentMethodObjectSupplied), default: nil
      const :universal_fingerprint, T.nilable(String), default: nil
      const :verification, T.nilable(Inttegro::Models::PaymentMethodObjectVerification), default: nil
      const :verified_at, T.nilable(String), default: nil
    end

    class ActivatePaymentMethodResponse < T::Struct
      const :payment_method, T.nilable(Inttegro::Models::PaymentMethodObject), default: nil
    end

    class AddProductPriceRequestAmount < T::Struct
      const :currency, String
      const :value, Integer
    end

    class AddProductPriceRequest < T::Struct
      const :product_id, String
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :amount, Inttegro::Models::AddProductPriceRequestAmount
    end

    class ProductPriceNominalNominal < T::Struct
      const :currency, String
      const :value, Integer
    end

    class ProductPriceNominal < T::Struct
      const :id, String
      const :product_id, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :active, T::Boolean
      const :nominal, Inttegro::Models::ProductPriceNominalNominal
      const :created_at, String
      const :updated_at, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
    end

    class Error < T::Struct
      const :message, T.nilable(String), default: nil
      const :fix_code, T.nilable(String), default: nil
      const :detail, T.nilable(String), default: nil
      const :cause, T.nilable(String), default: nil
      const :type, String
      const :code, String
      const :url, String
    end

    class AddProductPriceResponse < T::Struct
      const :price, T.nilable(Inttegro::Models::ProductPriceNominal), default: nil
      const :error, T.nilable(Inttegro::Models::Error), default: nil
    end

    class Address < T::Struct
      const :name, String
      const :phone_number, String
      const :line1, String
      const :line2, T.nilable(String), default: nil
      const :town, String
      const :region, T.nilable(String), default: nil
      const :district, T.nilable(String), default: nil
      const :country, String
      const :post_code, T.nilable(String), default: nil
    end

    class ArchivePaymentMethodRequest < T::Struct
      const :payment_method_id, String
    end

    class ArchivePaymentMethodResponse < T::Struct
      const :payment_method, T.nilable(Inttegro::Models::PaymentMethodObject), default: nil
    end

    class BalanceValue < T::Struct
      const :amount, Integer
    end

    class CurrencyBalanceSnapshotRefund < T::Struct
      const :amount, Integer
    end

    class CurrencyBalanceSnapshotReserved < T::Struct
      const :amount, Integer
    end

    class CurrencyBalanceSnapshot < T::Struct
      const :available, Inttegro::Models::BalanceValue
      const :includes_transactions_before, String
      const :pending, Inttegro::Models::BalanceValue
      const :refund, Inttegro::Models::CurrencyBalanceSnapshotRefund
      const :reserved, Inttegro::Models::CurrencyBalanceSnapshotReserved
    end

    class BalanceSnapshotResponseBalances < T::Struct
      const :ghs, Inttegro::Models::CurrencyBalanceSnapshot
    end

    class BalanceSnapshotResponse < T::Struct
      const :balances, Inttegro::Models::BalanceSnapshotResponseBalances
    end

    class BalanceTransactionAmount < T::Struct
      const :currency, String
      const :value, Integer
    end

    class BalanceTransaction < T::Struct
      const :amount, Inttegro::Models::BalanceTransactionAmount
      const :available_at, T.nilable(String), default: nil
      const :claimed_at, T.nilable(String), default: nil
      const :created_at, String
      const :id, String
      const :order_id, String
      const :paid_at, T.nilable(String), default: nil
      const :payment_id, T.nilable(String), default: nil
      const :payout_id, T.nilable(String), default: nil
      const :refund_id, T.nilable(String), default: nil
      const :type, Inttegro::Enums::BalanceTransactionType
    end

    class BalanceTransactionPageResponsePage < T::Struct
      const :number, Integer
      const :size, Integer
      const :transactions, T.nilable(T::Array[Inttegro::Models::BalanceTransaction]), default: nil
    end

    class BalanceTransactionPageResponse < T::Struct
      const :page, Inttegro::Models::BalanceTransactionPageResponsePage
    end

    class BalanceTransactionResponse < T::Struct
      const :transaction, Inttegro::Models::BalanceTransaction
    end

    class BillingDetails < T::Struct
      const :name, String
      const :email_address, String
      const :phone_number, String
      const :address, T.nilable(Inttegro::Models::Address), default: nil
    end

    class ChimeEmailMailbox < T::Struct
      const :name, T.nilable(String), default: nil
      const :address, T.nilable(String), default: nil
    end

    class ChimeEmailScannedLink < T::Struct
      const :raw, T.nilable(String), default: nil
      const :scheme, T.nilable(String), default: nil
      const :host, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Enums::ContentSafetyStatus), default: nil
      const :reason, T.nilable(String), default: nil
    end

    class ChimeEmailSafetyResult < T::Struct
      const :status, T.nilable(Inttegro::Enums::ContentSafetyStatus), default: nil
      const :reason_codes, T.nilable(T::Array[String]), default: nil
      const :sanitized_html, T.nilable(String), default: nil
      const :normalized_text, T.nilable(String), default: nil
      const :links, T.nilable(T::Array[Inttegro::Models::ChimeEmailScannedLink]), default: nil
      const :scanner, T.nilable(String), default: nil
      const :content_hash, T.nilable(String), default: nil
      const :quarantine_notes, T.nilable(String), default: nil
    end

    class ChimeEmailSchemaMarkup < T::Struct
      const :kind, T.nilable(Inttegro::Enums::ChimeEmailSchemaKind), default: nil
      const :json_ld, T.nilable(T::Hash[String, Object]), default: nil
    end

    class ChimeEmailMessage < T::Struct
      const :subject, T.nilable(String), default: nil
      const :text, T.nilable(String), default: nil
      const :html, T.nilable(String), default: nil
      const :from, T.nilable(Inttegro::Models::ChimeEmailMailbox), default: nil
      const :reply_to, T.nilable(Inttegro::Models::ChimeEmailMailbox), default: nil
      const :headers, T.nilable(T::Hash[String, String]), default: nil
      const :safety, T.nilable(Inttegro::Models::ChimeEmailSafetyResult), default: nil
      const :schema, T.nilable(Inttegro::Models::ChimeEmailSchemaMarkup), default: nil
    end

    class BroadcastError < T::Struct
      const :recipient, T.nilable(String), default: nil
      const :fix_code, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
    end

    class BroadcastCancelDetail < T::Struct
      const :chime_ids, T.nilable(T::Array[String]), default: nil
      const :content, String
      const :created_at, String
      const :customer_ids, T.nilable(T::Array[String]), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessage), default: nil
      const :errors, T.nilable(T::Array[Inttegro::Models::BroadcastError]), default: nil
      const :executed_at, T.nilable(String), default: nil
      const :id, String
      const :idempotency_key, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipients, T::Array[String]
      const :send_after, String
      const :sender_id, String
      const :canceled_at, T.nilable(String), default: nil
    end

    class BroadcastCancelResponse < T::Struct
      const :broadcast, T.nilable(Inttegro::Models::BroadcastCancelDetail), default: nil
    end

    class BroadcastCreationDetail < T::Struct
      const :content, String
      const :created_at, String
      const :customer_ids, T.nilable(T::Array[String]), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessage), default: nil
      const :id, String
      const :idempotency_key, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipients, T::Array[String]
      const :send_after, String
      const :sender_id, String
    end

    class BroadcastDetail < T::Struct
      const :chime_ids, T.nilable(T::Array[String]), default: nil
      const :content, String
      const :created_at, String
      const :customer_ids, T.nilable(T::Array[String]), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessage), default: nil
      const :errors, T.nilable(T::Array[Inttegro::Models::BroadcastError]), default: nil
      const :executed_at, T.nilable(String), default: nil
      const :id, String
      const :idempotency_key, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipients, T::Array[String]
      const :send_after, String
      const :sender_id, String
    end

    class BroadcastRequestRequestMeta < T::Struct
      const :idempotency_key, T.nilable(String), default: nil
    end

    class MessageTemplateVariables < T::Struct
      # This response intentionally has no fields.
    end

    class MessageTemplateReference < T::Struct
      const :template_id, String
      const :variables, T.nilable(Inttegro::Models::MessageTemplateVariables), default: nil
    end

    class ChimeEmailMessageInput < T::Struct
      const :subject, String
      const :text, String
      const :html, T.nilable(String), default: nil
      const :from, Inttegro::Models::ChimeEmailMailbox
      const :reply_to, T.nilable(String), default: nil
      const :headers, T.nilable(T::Hash[String, String]), default: nil
    end

    class ChimeInlineRecipientVariant1Phone < T::Struct
      const :number, String
    end

    class ChimeInlineRecipientVariant1 < T::Struct
      const :name, T.nilable(String), default: nil
      const :phone, Inttegro::Models::ChimeInlineRecipientVariant1Phone
      const :type, Inttegro::Enums::ChimeInlineRecipientVariant1Type
    end

    class ChimeInlineRecipientVariant2Email < T::Struct
      const :address, String
    end

    class ChimeInlineRecipientVariant2 < T::Struct
      const :email, Inttegro::Models::ChimeInlineRecipientVariant2Email
      const :name, T.nilable(String), default: nil
      const :type, Inttegro::Enums::ChimeInlineRecipientVariant2Type
    end

ChimeInlineRecipient = T.type_alias { T.any(Inttegro::Models::ChimeInlineRecipientVariant1, Inttegro::Models::ChimeInlineRecipientVariant2) }

    class ChimeSavedCustomerRecipient < T::Struct
      const :customer_id, String
      const :transport, Inttegro::Enums::ChimeTransport
    end

ChimeRecipient = T.type_alias { T.any(Inttegro::Models::ChimeInlineRecipient, Inttegro::Models::ChimeSavedCustomerRecipient) }

    class BroadcastRequest < T::Struct
      const :request_meta, T.nilable(Inttegro::Models::BroadcastRequestRequestMeta), default: nil
      const :message_template, T.nilable(T.any(String, Inttegro::Models::MessageTemplateReference)), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessageInput), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipients, T::Array[Inttegro::Models::ChimeRecipient]
      const :sender, T.nilable(String), default: nil
    end

    class BroadcastResponse < T::Struct
      const :broadcast, T.nilable(Inttegro::Models::BroadcastCreationDetail), default: nil
    end

    class CancelBroadcastRequest < T::Struct
      const :broadcast_id, String
    end

    class CancelOrderRequest < T::Struct
      const :order_id, String
      const :reason, T.nilable(String), default: nil
      const :execute_refund, T.nilable(T::Boolean), default: nil
    end

    class CancelPayoutRequest < T::Struct
      const :payout_id, String
    end

    class Money < T::Struct
      const :currency, String
      const :value, Integer
    end

    class PayoutError < T::Struct
      const :cause, String
      const :message, String
      const :occurred_at, String
      const :type, String
    end

    class Payout < T::Struct
      const :amount, T.nilable(Inttegro::Models::Money), default: nil
      const :balance_transactions, T.nilable(T::Array[String]), default: nil
      const :canceled_at, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :destination_id, String
      const :error, T.nilable(Inttegro::Models::PayoutError), default: nil
      const :execute_after, String
      const :executed_by, T.nilable(String), default: nil
      const :expected_at, T.nilable(String), default: nil
      const :failed_at, T.nilable(String), default: nil
      const :id, String
      const :initiated_at, String
      const :initiated_by, T.nilable(String), default: nil
      const :max_amount, Inttegro::Models::Money
      const :reference, T.nilable(String), default: nil
      const :schedule_id, T.nilable(String), default: nil
      const :scheduled_at, T.nilable(String), default: nil
      const :scheduled_by, T.nilable(String), default: nil
      const :sent_at, T.nilable(String), default: nil
      const :source_id, T.nilable(String), default: nil
      const :status, Inttegro::Enums::PayoutStatus
      const :succeeded_at, T.nilable(String), default: nil
    end

    class CancelPayoutResponse < T::Struct
      const :payout, T.nilable(Inttegro::Models::Payout), default: nil
    end

    class CancelPurchaseIntentRequest < T::Struct
      const :id, T.nilable(String), default: nil
      const :purchase_intent_id, T.nilable(String), default: nil
    end

    class RefundRequestMeta < T::Struct
      const :idempotency_key, T.nilable(String), default: nil
    end

    class CancelRefundRequest < T::Struct
      const :refund_id, String
      const :request_meta, T.nilable(Inttegro::Models::RefundRequestMeta), default: nil
    end

    class CancelScheduleRequest < T::Struct
      const :schedule_id, String
    end

    class FileActorInput < T::Struct
      const :email, T.nilable(String), default: nil
      const :id, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
    end

    class CancelUploadRequestRequest < T::Struct
      const :id, String
      const :canceled_by, T.nilable(Inttegro::Models::FileActorInput), default: nil
    end

    class CatalogProductWithPriceData < T::Struct
      const :price, Inttegro::Models::Money
      const :product_id, String
      const :quantity, Integer
    end

    class CatalogProductWithPriceReference < T::Struct
      const :price_id, String
      const :product_id, String
      const :quantity, Integer
    end

    class ChimeRecipientResponsePhone < T::Struct
      const :number, String
    end

    class ChimeRecipientResponseEmail < T::Struct
      const :address, String
    end

    class ChimeRecipientResponse < T::Struct
      const :type, Inttegro::Enums::ChimeRecipientType
      const :name, T.nilable(String), default: nil
      const :phone, T.nilable(Inttegro::Models::ChimeRecipientResponsePhone), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeRecipientResponseEmail), default: nil
    end

    class ChimeEmailEvent < T::Struct
      const :bounce_sub_type, T.nilable(String), default: nil
      const :bounce_type, T.nilable(String), default: nil
      const :complaint_sub_type, T.nilable(String), default: nil
      const :id, String
      const :occurred_at, String
      const :provider, String
      const :provider_message_id, String
      const :reason, T.nilable(String), default: nil
      const :reason_code, T.nilable(String), default: nil
      const :recipient, T.nilable(String), default: nil
      const :source, T.nilable(String), default: nil
      const :suppress_recipient, T.nilable(T::Boolean), default: nil
      const :temporary, T.nilable(T::Boolean), default: nil
      const :type, String
    end

    class ChimeTransmission < T::Struct
      const :address, String
      const :created_at, String
      const :delivered_at, T.nilable(String), default: nil
      const :email_events, T.nilable(T::Array[Inttegro::Models::ChimeEmailEvent]), default: nil
      const :email_failure_code, T.nilable(String), default: nil
      const :email_failure_reason, T.nilable(String), default: nil
      const :email_status, T.nilable(String), default: nil
      const :error, T.nilable(String), default: nil
      const :failed_at, T.nilable(String), default: nil
      const :gateway, String
      const :gateway_message_id, T.nilable(String), default: nil
      const :id, String
      const :initialized_at, String
      const :last_email_event_at, T.nilable(String), default: nil
      const :mechanism, Inttegro::Enums::ChimeTransport
      const :sent_at, T.nilable(String), default: nil
      const :sent_via, T.nilable(Inttegro::Enums::ChimeTransport), default: nil
      const :status, String
      const :suppressed_at, T.nilable(String), default: nil
      const :suppression_reason, T.nilable(String), default: nil
    end

    class Chime < T::Struct
      const :created_at, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :customer_id, T.nilable(String), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessage), default: nil
      const :full_message, String
      const :id, String
      const :idempotency_key, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipient, Inttegro::Models::ChimeRecipientResponse
      const :sender_id, String
      const :transmission, T.nilable(Inttegro::Models::ChimeTransmission), default: nil
    end

    class ChimeResponse < T::Struct
      const :chime, T.nilable(Inttegro::Models::Chime), default: nil
    end

    class CompleteOrderRequest < T::Struct
      const :order_id, String
      const :paid_out_of_band, T.nilable(T::Boolean), default: nil
    end

    class OrderCheckoutSettings < T::Struct
      const :redirect_url, T.nilable(String), default: nil
      const :cancel_url, T.nilable(String), default: nil
    end

    class OrderCreatedFrom < T::Struct
      const :source, T.nilable(String), default: nil
      const :resource_type, T.nilable(Inttegro::Enums::OrderCreatedFromResourceType), default: nil
      const :resource_id, T.nilable(String), default: nil
    end

    class OrderAddress < T::Struct
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :city, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :country, String
    end

    class OrderCustomer < T::Struct
      const :id, String
      const :guest, T::Boolean
      const :name, String
      const :email_address, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :billing_address, T.nilable(Inttegro::Models::OrderAddress), default: nil
      const :shipping_address, T.nilable(Inttegro::Models::OrderAddress), default: nil
    end

    class OrderDocumentFormat < T::Struct
      const :url, String
    end

    class OrderInvoiceFormat < T::Struct
      const :web, Inttegro::Models::OrderDocumentFormat
      const :pdf, Inttegro::Models::OrderDocumentFormat
      const :receipt, T.nilable(Inttegro::Models::OrderDocumentFormat), default: nil
    end

    class OrderInvoice < T::Struct
      const :number, T.nilable(String), default: nil
      const :format_value, T.nilable(Inttegro::Models::OrderInvoiceFormat), default: nil, name: "format"
    end

    class RefundMoney < T::Struct
      const :currency, String
      const :value, Integer
    end

RefundReason = T.type_alias { Inttegro::Enums::RefundReason }

    class RefundLineItem < T::Struct
      const :id, String
      const :order_line_item_id, String
      const :original_amount_paid, Inttegro::Models::RefundMoney
      const :reason, T.nilable(Inttegro::Models::RefundReason), default: nil
      const :reason_details, T.nilable(String), default: nil
      const :refund_amount, Inttegro::Models::RefundMoney
    end

    class Refund < T::Struct
      const :canceled_at, T.nilable(String), default: nil
      const :created_at, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :failed_at, T.nilable(String), default: nil
      const :id, String
      const :line_items, T::Array[Inttegro::Models::RefundLineItem]
      const :order_id, String
      const :processing_at, T.nilable(String), default: nil
      const :reason, Inttegro::Models::RefundReason
      const :reason_details, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :status, Inttegro::Enums::RefundStatus
      const :succeeded_at, T.nilable(String), default: nil
      const :total, Inttegro::Models::RefundMoney
    end

    class InvoiceSettings < T::Struct
      const :number, T.nilable(String), default: nil
      const :memo, T.nilable(String), default: nil
      const :footer, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    end

    class OrderProductLineItemProduct < T::Struct
      const :id, String
      const :product_id, T.nilable(String), default: nil
      const :price_id, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :name, String
      const :category, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
      const :price, Inttegro::Models::Money
      const :quantity, Integer
    end

    class OrderProductLineItem < T::Struct
      const :type, Inttegro::Enums::OrderProductLineItemType
      const :product, Inttegro::Models::OrderProductLineItemProduct
    end

    class OrderFeeLineItemFee < T::Struct
      const :id, String
      const :description, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :amount, Inttegro::Models::Money
      const :label, String
    end

    class OrderFeeLineItem < T::Struct
      const :type, Inttegro::Enums::OrderFeeLineItemType
      const :fee, Inttegro::Models::OrderFeeLineItemFee
    end

    class OrderShippingLineItemShipping < T::Struct
      const :id, String
      const :tax_code, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :fee, Inttegro::Models::Money
    end

    class OrderShippingLineItem < T::Struct
      const :type, Inttegro::Enums::OrderShippingLineItemType
      const :shipping, Inttegro::Models::OrderShippingLineItemShipping
    end

OrderLineItem = T.type_alias { T.any(Inttegro::Models::OrderProductLineItem, Inttegro::Models::OrderFeeLineItem, Inttegro::Models::OrderShippingLineItem) }

    class OrderLineItemGroup < T::Struct
      const :line_items, T::Array[Inttegro::Models::OrderLineItem]
      const :total, Inttegro::Models::Money
    end

    class OrderPaymentMethodBankAccountGhanaBankAccount < T::Struct
      const :account_number, String
      const :branch, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :sort_code, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end

    class OrderPaymentMethodBankAccount < T::Struct
      const :type, String
      const :ghana_bank_account, T.nilable(Inttegro::Models::OrderPaymentMethodBankAccountGhanaBankAccount), default: nil
    end

    class OrderPaymentMethodCard < T::Struct
      # This response intentionally has no fields.
    end

    class OrderPaymentMethodMobileMoney < T::Struct
      const :network, Inttegro::Enums::MobileMoneyNetwork
      const :account_number, String
      const :last4, String
    end

    class OrderPaymentMethodOwner < T::Struct
      const :name, String
      const :address, T.nilable(Inttegro::Models::OrderAddress), default: nil
    end

    class OrderPaymentMethod < T::Struct
      const :id, String
      const :bank_account, T.nilable(Inttegro::Models::OrderPaymentMethodBankAccount), default: nil
      const :card, T.nilable(Inttegro::Models::OrderPaymentMethodCard), default: nil
      const :created_at, String
      const :customer_id, String
      const :mobile_money, T.nilable(Inttegro::Models::OrderPaymentMethodMobileMoney), default: nil
      const :owner, T.nilable(Inttegro::Models::OrderPaymentMethodOwner), default: nil
      const :type, Inttegro::Enums::PaymentMethodType
      const :verified, T::Boolean
      const :verified_at, T.nilable(String), default: nil
    end

    class OrderPaymentLatestAttempt < T::Struct
      const :payment_method_type, T.nilable(String), default: nil
      const :payment_method_id, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Enums::PaymentAttemptStatus), default: nil
      const :initiated_at, T.nilable(String), default: nil
      const :succeeded_at, T.nilable(String), default: nil
    end

    class PaymentNextActionConfirmPaymentRequest < T::Struct
      const :id, T.nilable(String), default: nil
      const :recipient, T.nilable(String), default: nil
      const :sent_via, T.nilable(Inttegro::Enums::PaymentConfirmationChannel), default: nil
      const :token_size, T.nilable(Integer), default: nil
      const :sender_id, T.nilable(String), default: nil
    end

    class PaymentNextActionConfirmPaymentAttempt < T::Struct
      const :status, T.nilable(String), default: nil
      const :confirmed, T.nilable(T::Boolean), default: nil
      const :reason, T.nilable(String), default: nil
      const :token, T.nilable(String), default: nil
      const :executed_at, T.nilable(String), default: nil
      const :created_at, T.nilable(String), default: nil
    end

    class PaymentNextActionConfirmPayment < T::Struct
      const :expires_at, T.nilable(String), default: nil
      const :scheme, T.nilable(String), default: nil
      const :request, T.nilable(Inttegro::Models::PaymentNextActionConfirmPaymentRequest), default: nil
      const :attempt, T.nilable(Inttegro::Models::PaymentNextActionConfirmPaymentAttempt), default: nil
      const :confirmed, T.nilable(T::Boolean), default: nil
      const :status, T.nilable(String), default: nil
    end

    class PaymentNextActionExecute < T::Struct
      # This response intentionally has no fields.
    end

    class PaymentNextActionRedirectLatestVisit < T::Struct
      const :user_agent, T.nilable(String), default: nil
      const :ip_address, T.nilable(String), default: nil
      const :at, T.nilable(String), default: nil
    end

    class PaymentNextActionRedirect < T::Struct
      const :redirect_url, T.nilable(String), default: nil
      const :valid_until, T.nilable(String), default: nil
      const :latest_visit, T.nilable(Inttegro::Models::PaymentNextActionRedirectLatestVisit), default: nil
    end

    class PaymentNextActionAuthorize < T::Struct
      const :beneficiary, T.nilable(String), default: nil
      const :scheme, T.nilable(String), default: nil
      const :expires_at, T.nilable(String), default: nil
    end

    class PaymentNextAction < T::Struct
      const :type, Inttegro::Enums::PaymentNextActionType
      const :confirm_payment, T.nilable(Inttegro::Models::PaymentNextActionConfirmPayment), default: nil
      const :execute, T.nilable(Inttegro::Models::PaymentNextActionExecute), default: nil
      const :redirect, T.nilable(Inttegro::Models::PaymentNextActionRedirect), default: nil
      const :authorize, T.nilable(Inttegro::Models::PaymentNextActionAuthorize), default: nil
    end

    class OrderPaymentPayoutConfigurationDestination < T::Struct
      const :financial_account_id, T.nilable(String), default: nil
    end

    class OrderPaymentPayoutConfiguration < T::Struct
      const :enable_fx, T.nilable(T::Boolean), default: nil
      const :destination, T.nilable(Inttegro::Models::OrderPaymentPayoutConfigurationDestination), default: nil
    end

    class OrderPayment < T::Struct
      const :id, String
      const :status, Inttegro::Enums::OrderPaymentStatus
      const :statement_descriptor, String
      const :amount, Inttegro::Models::Money
      const :balance_transaction, T.nilable(Inttegro::Models::BalanceTransaction), default: nil
      const :payment_method, T.nilable(Inttegro::Models::OrderPaymentMethod), default: nil
      const :latest_attempt, T.nilable(Inttegro::Models::OrderPaymentLatestAttempt), default: nil
      const :next_action, T.nilable(Inttegro::Models::PaymentNextAction), default: nil
      const :initiated_at, String
      const :executed_at, T.nilable(String), default: nil
      const :paid_at, T.nilable(String), default: nil
      const :canceled_at, T.nilable(String), default: nil
      const :due_at, T.nilable(String), default: nil
      const :expired_at, T.nilable(String), default: nil
      const :failed_at, T.nilable(String), default: nil
      const :paid_offline, T.nilable(T::Boolean), default: nil
      const :payment_method_types, T.nilable(T::Array[String]), default: nil
      const :payout_configuration, T.nilable(Inttegro::Models::OrderPaymentPayoutConfiguration), default: nil
    end

    class OrderPayoutSettings < T::Struct
      # This response intentionally has no fields.
    end

    class OrderShipping < T::Struct
      # This response intentionally has no fields.
    end

    class Order < T::Struct
      const :canceled_at, T.nilable(String), default: nil
      const :checkout_settings, T.nilable(Inttegro::Models::OrderCheckoutSettings), default: nil
      const :completed_at, T.nilable(String), default: nil
      const :created_from, T.nilable(Inttegro::Models::OrderCreatedFrom), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :customer, Inttegro::Models::OrderCustomer
      const :expires_at, T.nilable(String), default: nil
      const :id, String
      const :initiated_at, String
      const :invoice, T.nilable(Inttegro::Models::OrderInvoice), default: nil
      const :number, T.nilable(String), default: nil
      const :receipt_number, T.nilable(String), default: nil
      const :refunds, T.nilable(T::Array[Inttegro::Models::Refund]), default: nil
      const :invoice_settings, T.nilable(Inttegro::Models::InvoiceSettings), default: nil
      const :status, Inttegro::Enums::OrderStatus
      const :sealed_at, T.nilable(String), default: nil
      const :line_item_group, T.nilable(Inttegro::Models::OrderLineItemGroup), default: nil
      const :payment, T.nilable(Inttegro::Models::OrderPayment), default: nil
      const :paid_at, T.nilable(String), default: nil
      const :payment_due_at, T.nilable(String), default: nil
      const :payout_settings, T.nilable(Inttegro::Models::OrderPayoutSettings), default: nil
      const :reference, T.nilable(String), default: nil
      const :shipping, T.nilable(Inttegro::Models::OrderShipping), default: nil
    end

    class CompleteOrderResponse < T::Struct
      const :order, T.nilable(Inttegro::Models::Order), default: nil
    end

    class ConfirmPaymentRequest < T::Struct
      const :order_id, String
      const :payment_id, String
      const :confirmation_id, String
      const :token, String
    end

    class FinancialInstitutionBankBranch < T::Struct
      const :id, String
      const :name, String
      const :sort_code, String
    end

    class FinancialInstitutionBank < T::Struct
      const :bank_account_type, String
      const :branch, T.nilable(Inttegro::Models::FinancialInstitutionBankBranch), default: nil
      const :code_scheme, String
      const :sort_code_prefix, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end

    class FinancialInstitutionMobileMoneyProvider < T::Struct
      const :provider, String
    end

    class FinancialInstitution < T::Struct
      const :bank, T.nilable(Inttegro::Models::FinancialInstitutionBank), default: nil
      const :country, String
      const :id, String
      const :mobile_money_provider, T.nilable(Inttegro::Models::FinancialInstitutionMobileMoneyProvider), default: nil
      const :name, String
      const :type, String
    end

    class FinancialAccountPullConfigurationMandate < T::Struct
      const :created_at, String
      const :id, String
      const :ip_address, String
      const :user_agent, String
    end

    class FinancialAccountPullConfiguration < T::Struct
      const :enabled_at, String
      const :mandate, Inttegro::Models::FinancialAccountPullConfigurationMandate
    end

    class FinancialAccountPushConfiguration < T::Struct
      const :enabled_at, String
    end

    class ResourceSupply < T::Struct
      const :attempt_id, T.nilable(String), default: nil
      const :by, String
      const :channel, T.nilable(String), default: nil
      const :resource_id, T.nilable(String), default: nil
      const :resource_type, T.nilable(String), default: nil
      const :supplied_at, String
    end

    class FinancialAccountCommonResponseVerification < T::Struct
      # This response intentionally has no fields.
    end

    class FinancialAccountAddressResponse < T::Struct
      const :city, String
      const :country, String
      const :line_1, String
      const :line_2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, String
    end

    class FinancialAccountOwnerResponse < T::Struct
      const :address, Inttegro::Models::FinancialAccountAddressResponse
      const :name, String
    end

    class GhanaBankAccountResponse < T::Struct
      const :branch, T.nilable(String), default: nil
      const :holder, Inttegro::Models::FinancialAccountOwnerResponse
      const :name, T.nilable(String), default: nil
      const :number, String
      const :sort_code, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end

    class FinancialAccountBankResponse < T::Struct
      const :type, Inttegro::Enums::BankAccountType
      const :ghana_bank_account, T.nilable(Inttegro::Models::GhanaBankAccountResponse), default: nil
    end

    class FinancialAccountConnectedResponseDoshAccount < T::Struct
      # This response intentionally has no fields.
    end

    class FinancialAccountWalletResponseMobileMoney < T::Struct
      const :account_number, String
      const :network, Inttegro::Enums::MobileMoneyNetwork
    end

    class FinancialAccountWalletResponse < T::Struct
      const :id, String
      const :type, Inttegro::Enums::WalletType
      const :mobile_money, T.nilable(Inttegro::Models::FinancialAccountWalletResponseMobileMoney), default: nil
    end

    class FinancialAccountConnectedResponse < T::Struct
      const :app_customer_local_fingerprint, T.nilable(String), default: nil
      const :app_local_fingerprint, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
      const :created_at, String
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :institution, T.nilable(Inttegro::Models::FinancialInstitution), default: nil
      const :label, T.nilable(String), default: nil
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountPullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountPushConfiguration), default: nil
      const :reference, T.nilable(String), default: nil
      const :supplied, T.nilable(Inttegro::Models::ResourceSupply), default: nil
      const :type, Inttegro::Enums::FinancialAccountType
      const :universal_fingerprint, T.nilable(String), default: nil
      const :verification, T.nilable(Inttegro::Models::FinancialAccountCommonResponseVerification), default: nil
      const :bank_account, T.nilable(Inttegro::Models::FinancialAccountBankResponse), default: nil
      const :dosh_account, T.nilable(Inttegro::Models::FinancialAccountConnectedResponseDoshAccount), default: nil
      const :owner, T.nilable(Inttegro::Models::FinancialAccountOwnerResponse), default: nil
      const :wallet, T.nilable(Inttegro::Models::FinancialAccountWalletResponse), default: nil
    end

    class ConnectFinancialAccountResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountConnectedResponse), default: nil
    end

    class CountryBankBranch < T::Struct
      const :id, String
      const :name, String
      const :sort_code, String
    end

    class CountryBank < T::Struct
      const :id, String
      const :name, String
      const :swift_code, T.nilable(String), default: nil
      const :sort_code_prefix, T.nilable(String), default: nil
      const :branches, T::Array[Inttegro::Models::CountryBankBranch]
    end

    class CountryBankDirectory < T::Struct
      const :bank_account_type, String
      const :code_scheme, String
      const :items, T::Array[Inttegro::Models::CountryBank]
    end

    class CountrySpecification < T::Struct
      const :country_code, String
      const :country_name, String
      const :currencies, T::Array[String]
      const :payment_methods, T::Array[String]
      const :payout_schedules, T::Array[String]
      const :bt_aging_specs, T::Array[String]
      const :legal_entity_types, T::Array[String]
      const :financial_account_types, T::Array[String]
      const :id_document_types, T::Array[String]
      const :banks, T.nilable(Inttegro::Models::CountryBankDirectory), default: nil
    end

    class CreateApplicationRequestRelationshipPolicy < T::Struct
      const :child_standing, T.nilable(String), default: nil
      const :management, T.nilable(Inttegro::Enums::AppManagementRole), default: nil
      const :credentials, T.nilable(Inttegro::Enums::AppCredentialOwner), default: nil
    end

    class CreateApplicationRequest < T::Struct
      const :name, String
      const :alias, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :legal_entity_type, T.nilable(String), default: nil
      const :placement_parent_application_id, T.nilable(String), default: nil
      const :relationship_policy, T.nilable(Inttegro::Models::CreateApplicationRequestRelationshipPolicy), default: nil
    end

    class CreateApplicationResponseAppSecretKey < T::Struct
      const :id, T.nilable(String), default: nil
      const :token_type, T.nilable(String), default: nil
      const :issued_at, T.nilable(String), default: nil
      const :token, T.nilable(String), default: nil
    end

    class CreateApplicationResponseAppRelationshipRelationshipPolicy < T::Struct
      const :child_standing, String
      const :management, Inttegro::Enums::AppManagementRole
      const :credentials, Inttegro::Enums::AppCredentialOwner
    end

    class CreateApplicationResponseAppRelationship < T::Struct
      const :id, String
      const :kind, Inttegro::Enums::AppRelationshipKind
      const :policy_version, String
      const :status, Inttegro::Enums::AppRelationshipStatus
      const :actor_app_id, String
      const :creator_app_id, String
      const :placement_parent_app_id, String
      const :subject_app_id, String
      const :child_app_id, String
      const :child_standing, String
      const :relationship_policy, Inttegro::Models::CreateApplicationResponseAppRelationshipRelationshipPolicy
      const :retained_creator_authority_exists, T::Boolean
      const :created_at, String
    end

    class CreateApplicationResponseApp < T::Struct
      const :id, String
      const :name, String
      const :alias, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :created_at, String
      const :secret_key, T.nilable(Inttegro::Models::CreateApplicationResponseAppSecretKey), default: nil
      const :relationship, T.nilable(Inttegro::Models::CreateApplicationResponseAppRelationship), default: nil
    end

    class CreateApplicationResponse < T::Struct
      const :app, Inttegro::Models::CreateApplicationResponseApp
    end

    class CustomerAddressInput < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, String
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end

    class CreateCustomerRequest < T::Struct
      const :billing_address, T.nilable(Inttegro::Models::CustomerAddressInput), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :email_address, T.nilable(String), default: nil
      const :name, String
      const :phone_number, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :shipping_address, T.nilable(Inttegro::Models::CustomerAddressInput), default: nil
      const :title, T.nilable(String), default: nil
    end

MessageTemplateAttachmentIDs = T.type_alias { T::Array[String] }

    class MessageTemplateMailbox < T::Struct
      const :address, String
      const :name, T.nilable(String), default: nil
    end

    class MessageTemplateEmailContent < T::Struct
      const :subject, String
      const :html, String
      const :from, T.nilable(Inttegro::Models::MessageTemplateMailbox), default: nil
      const :reply_to, T.nilable(Inttegro::Models::MessageTemplateMailbox), default: nil
      const :headers, T.nilable(T::Hash[String, String]), default: nil
    end

    class MessageTemplateVariableItemInput < T::Struct
      const :about, T.nilable(String), default: nil
      const :default, T.nilable(Object), default: nil
      const :name, String
      const :required, T.nilable(T::Boolean), default: nil
      const :type, Inttegro::Enums::MessageTemplateVariableItemType
    end

    class MessageTemplateVariableInput < T::Struct
      const :name, String
      const :type, Inttegro::Enums::MessageTemplateVariableType
      const :required, T.nilable(T::Boolean), default: nil
      const :default, T.nilable(Object), default: nil
      const :about, T.nilable(String), default: nil
      const :items, T.nilable(T::Array[Inttegro::Models::MessageTemplateVariableItemInput]), default: nil
    end

    class CreateEmailMessageTemplateRequest < T::Struct
      const :about, T.nilable(String), default: nil
      const :attachments, T.nilable(Inttegro::Models::MessageTemplateAttachmentIDs), default: nil
      const :channel, Inttegro::Enums::CreateEmailMessageTemplateRequestChannel
      const :email, Inttegro::Models::MessageTemplateEmailContent
      const :locale, T.nilable(String), default: nil
      const :name, String
      const :purpose, String
      const :variables, T.nilable(T::Array[Inttegro::Models::MessageTemplateVariableInput]), default: nil
    end

    class FileLinkDelivery < T::Struct
      const :mode, T.nilable(Inttegro::Enums::FileLinkDeliveryMode), default: nil
      const :filename, T.nilable(String), default: nil
      const :content_type, T.nilable(String), default: nil
      const :disposition, T.nilable(String), default: nil
    end

    class FileLinkAccessRequest < T::Struct
      const :max_accesses, T.nilable(Integer), default: nil
      const :allow_download, T.nilable(T::Boolean), default: nil
      const :allowed_origins, T.nilable(T::Array[String]), default: nil
      const :allowed_ip_ranges, T.nilable(T::Array[String]), default: nil
    end

    class CreateFileLinkRequest < T::Struct
      const :file_id, String
      const :delivery, T.nilable(Inttegro::Models::FileLinkDelivery), default: nil
      const :access, T.nilable(Inttegro::Models::FileLinkAccessRequest), default: nil
      const :created_by, T.nilable(Inttegro::Models::FileActorInput), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :expires_at, T.nilable(String), default: nil
    end

    class FileLinkAccess < T::Struct
      const :max_accesses, T.nilable(Integer), default: nil
      const :access_count, T.nilable(Integer), default: nil
      const :last_accessed_at, T.nilable(String), default: nil
      const :allow_download, T.nilable(T::Boolean), default: nil
      const :allowed_origins, T.nilable(T::Array[String]), default: nil
    end

    class FileLinkActor < T::Struct
      const :email, T.nilable(String), default: nil
      const :id, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :type, String
    end

    class FileLinkObject < T::Struct
      const :id, String
      const :kind, Inttegro::Enums::FileLinkKind
      const :file_id, String
      const :purpose, String
      const :status, Inttegro::Enums::FileLinkStatus
      const :active, T::Boolean
      const :delivery, Inttegro::Models::FileLinkDelivery
      const :access, Inttegro::Models::FileLinkAccess
      const :created_by, Inttegro::Models::FileLinkActor
      const :revoked_by, T.nilable(Inttegro::Models::FileLinkActor), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :metadata, T.nilable(T::Hash[String, String]), default: nil
      const :created_at, String
      const :updated_at, String
      const :expires_at, String
      const :revoked_at, T.nilable(String), default: nil
    end

    class CreateFileLinkResponse < T::Struct
      const :file_link, Inttegro::Models::FileLinkObject
      const :url, String
    end

    class CreateFileRequest < T::Struct
      const :file, String
      const :purpose, String
      const :title, T.nilable(String), default: nil
      const :custom_data, T.nilable(String), default: nil
    end

    class FinancialAccountAddressCreateResponse < T::Struct
      const :application_id, String
      const :city, String
      const :country, String
      const :id, String
      const :line_1, String
      const :line_2, T.nilable(String), default: nil
      const :name, String
      const :phone, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, String
    end

    class FinancialAccountOwnerCreateResponse < T::Struct
      const :address, Inttegro::Models::FinancialAccountAddressCreateResponse
      const :name, String
    end

    class GhanaBankAccountCreateResponse < T::Struct
      const :branch, T.nilable(String), default: nil
      const :holder, Inttegro::Models::FinancialAccountOwnerCreateResponse
      const :name, String
      const :number, String
      const :sort_code, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end

    class FinancialAccountBankCreateResponse < T::Struct
      const :id, String
      const :type, Inttegro::Enums::BankAccountType
      const :ghana_bank_account, T.nilable(Inttegro::Models::GhanaBankAccountCreateResponse), default: nil
    end

    class FinancialAccountCreateResponse < T::Struct
      const :app_customer_local_fingerprint, T.nilable(String), default: nil
      const :app_local_fingerprint, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
      const :created_at, String
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :institution, T.nilable(Inttegro::Models::FinancialInstitution), default: nil
      const :label, T.nilable(String), default: nil
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountPullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountPushConfiguration), default: nil
      const :reference, T.nilable(String), default: nil
      const :supplied, T.nilable(Inttegro::Models::ResourceSupply), default: nil
      const :type, Inttegro::Enums::FinancialAccountType
      const :universal_fingerprint, T.nilable(String), default: nil
      const :verification, T.nilable(Inttegro::Models::FinancialAccountCommonResponseVerification), default: nil
      const :bank_account, T.nilable(Inttegro::Models::FinancialAccountBankCreateResponse), default: nil
      const :owner, T.nilable(Inttegro::Models::FinancialAccountOwnerCreateResponse), default: nil
      const :wallet, T.nilable(Inttegro::Models::FinancialAccountWalletResponse), default: nil
    end

    class CreateFinancialAccountResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountCreateResponse), default: nil
    end

    class MessageTemplateSMSContent < T::Struct
      const :message_template, String
    end

    class CreateSMSMessageTemplateRequest < T::Struct
      const :about, T.nilable(String), default: nil
      const :channel, Inttegro::Enums::CreateSMSMessageTemplateRequestChannel
      const :locale, T.nilable(String), default: nil
      const :name, String
      const :purpose, String
      const :sms, Inttegro::Models::MessageTemplateSMSContent
      const :variables, T.nilable(T::Array[Inttegro::Models::MessageTemplateVariableInput]), default: nil
    end

CreateMessageTemplateRequest = T.type_alias { T.any(Inttegro::Models::CreateSMSMessageTemplateRequest, Inttegro::Models::CreateEmailMessageTemplateRequest) }

    class CreateOrderExistingCustomerRequestMeta < T::Struct
      const :idempotency_key, T.nilable(String), default: nil
    end

    class CreateOrderExistingCustomerCheckoutSettings < T::Struct
      const :redirect_url, T.nilable(String), default: nil
      const :cancel_url, T.nilable(String), default: nil
    end

    class OrderPayoutSettingsRequestDestination < T::Struct
      const :financial_account_id, String
    end

    class OrderPayoutSettingsRequest < T::Struct
      const :destination, T.nilable(Inttegro::Models::OrderPayoutSettingsRequestDestination), default: nil
      const :enable_fx, T.nilable(T::Boolean), default: nil
    end

    class InlineProductDetails < T::Struct
      const :about, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :name, String
      const :price, Inttegro::Models::Money
      const :quantity, Integer
      const :reference, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :type, Inttegro::Enums::ProductType
    end

ProductDetails = T.type_alias { T.any(Inttegro::Models::InlineProductDetails, Inttegro::Models::CatalogProductWithPriceData, Inttegro::Models::CatalogProductWithPriceReference) }

    class ProductLineItem < T::Struct
      const :type, Inttegro::Enums::ProductLineItemType
      const :product, Inttegro::Models::ProductDetails
    end

    class FeeDetails < T::Struct
      const :id, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :amount, Inttegro::Models::Money
    end

    class FeeLineItem < T::Struct
      const :type, Inttegro::Enums::FeeLineItemType
      const :fee, Inttegro::Models::FeeDetails
    end

    class ShippingDetails < T::Struct
      const :id, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :fee, Inttegro::Models::Money
    end

    class ShippingLineItem < T::Struct
      const :type, Inttegro::Enums::ShippingLineItemType
      const :shipping, Inttegro::Models::ShippingDetails
    end

LineItem = T.type_alias { T.any(Inttegro::Models::ProductLineItem, Inttegro::Models::FeeLineItem, Inttegro::Models::ShippingLineItem) }

    class Shipping < T::Struct
      const :address, Inttegro::Models::Address
    end

    class CreateOrderExistingCustomer < T::Struct
      const :customer_id, String
      const :payment_method_id, T.nilable(String), default: nil
      const :receipt_number, T.nilable(String), default: nil
      const :statement_descriptor, T.nilable(String), default: nil
      const :statement_descriptor_prefix, T.nilable(String), default: nil
      const :execute_payment, T.nilable(T::Boolean), default: nil
      const :finalize, T.nilable(T::Boolean), default: nil
      const :request_meta, T.nilable(Inttegro::Models::CreateOrderExistingCustomerRequestMeta), default: nil
      const :checkout_settings, T.nilable(Inttegro::Models::CreateOrderExistingCustomerCheckoutSettings), default: nil
      const :invoice_settings, T.nilable(Inttegro::Models::InvoiceSettings), default: nil
      const :payout_settings, T.nilable(Inttegro::Models::OrderPayoutSettingsRequest), default: nil
      const :line_items, T::Array[Inttegro::Models::LineItem]
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :billing_details, T.nilable(Inttegro::Models::BillingDetails), default: nil
      const :shipping, T.nilable(Inttegro::Models::Shipping), default: nil
    end

    class CustomerData < T::Struct
      const :name, String
      const :email_address, String
      const :phone_number, String
      const :reference, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    end

    class CreateOrderNewCustomerRequestMeta < T::Struct
      const :idempotency_key, T.nilable(String), default: nil
    end

    class CreateOrderNewCustomerCheckoutSettings < T::Struct
      const :redirect_url, T.nilable(String), default: nil
      const :cancel_url, T.nilable(String), default: nil
    end

    class CreateOrderNewCustomer < T::Struct
      const :customer_data, Inttegro::Models::CustomerData
      const :number, T.nilable(String), default: nil
      const :receipt_number, T.nilable(String), default: nil
      const :statement_descriptor, T.nilable(String), default: nil
      const :statement_descriptor_prefix, T.nilable(String), default: nil
      const :execute_payment, T.nilable(T::Boolean), default: nil
      const :finalize, T.nilable(T::Boolean), default: nil
      const :request_meta, T.nilable(Inttegro::Models::CreateOrderNewCustomerRequestMeta), default: nil
      const :checkout_settings, T.nilable(Inttegro::Models::CreateOrderNewCustomerCheckoutSettings), default: nil
      const :invoice_settings, T.nilable(Inttegro::Models::InvoiceSettings), default: nil
      const :payout_settings, T.nilable(Inttegro::Models::OrderPayoutSettingsRequest), default: nil
      const :line_items, T::Array[Inttegro::Models::LineItem]
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :billing_details, T.nilable(Inttegro::Models::BillingDetails), default: nil
      const :shipping, T.nilable(Inttegro::Models::Shipping), default: nil
    end

    class CreatePriceRequest < T::Struct
      const :product_id, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :amount, Inttegro::Models::Money
    end

    class ProductShipmentInput < T::Struct
      const :type, Inttegro::Enums::ProductShipmentInputType
    end

    class ProductDimensionsPhysical < T::Struct
      const :weight_unit, T.nilable(String), default: nil
      const :weight, T.nilable(T.any(Integer, Float)), default: nil
      const :size, T.nilable(T.any(Integer, Float)), default: nil
      const :volume_unit, T.nilable(String), default: nil
      const :volume, T.nilable(T.any(Integer, Float)), default: nil
      const :length, T.nilable(T.any(Integer, Float)), default: nil
      const :height, T.nilable(T.any(Integer, Float)), default: nil
      const :width, T.nilable(T.any(Integer, Float)), default: nil
    end

    class ProductDimensionsDigital < T::Struct
      const :bytes, T.nilable(T.any(Integer, Float)), default: nil
      const :size_unit, T.nilable(String), default: nil
      const :size, T.nilable(T.any(Integer, Float)), default: nil
    end

    class ProductDimensionsCustom < T::Struct
      const :size_unit, T.nilable(String), default: nil
      const :size, T.nilable(T.any(Integer, Float)), default: nil
      const :details, T.nilable(T::Hash[String, String]), default: nil
    end

    class ProductDimensions < T::Struct
      const :physical, T.nilable(Inttegro::Models::ProductDimensionsPhysical), default: nil
      const :digital, T.nilable(Inttegro::Models::ProductDimensionsDigital), default: nil
      const :custom, T.nilable(Inttegro::Models::ProductDimensionsCustom), default: nil
    end

    class ProductMedia < T::Struct
      const :hero_image, T.nilable(String), default: nil
      const :thumbnail, T.nilable(String), default: nil
      const :web_page_url, T.nilable(String), default: nil
      const :brand_logo, T.nilable(String), default: nil
      const :infographic, T.nilable(String), default: nil
      const :promo_video, T.nilable(String), default: nil
      const :demo_video, T.nilable(String), default: nil
      const :gallery, T.nilable(T::Array[String]), default: nil
      const :downloads, T.nilable(T::Array[String]), default: nil
    end

    class ProductAttribute < T::Struct
      const :name, String
      const :value, String
    end

    class CreateProductRequest < T::Struct
      const :type, Inttegro::Enums::ProductType
      const :reference, T.nilable(String), default: nil
      const :name, String
      const :description, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :category, T.nilable(String), default: nil
      const :shipment, T.nilable(Inttegro::Models::ProductShipmentInput), default: nil
      const :dimensions, T.nilable(Inttegro::Models::ProductDimensions), default: nil
      const :unit_dimension, T.nilable(String), default: nil
      const :media, T.nilable(Inttegro::Models::ProductMedia), default: nil
      const :attributes, T.nilable(T::Array[Inttegro::Models::ProductAttribute]), default: nil
      const :publish, T.nilable(T::Boolean), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    end

    class CreatePurchaseIntentRequestProduct < T::Struct
      const :id, String
      const :variant_set_id, T.nilable(String), default: nil
    end

    class CreatePurchaseIntentRequestPriceNominal < T::Struct
      const :currency, String
      const :value, Integer
    end

    class CreatePurchaseIntentRequestPriceOriginalNominal < T::Struct
      const :currency, String
      const :value, Integer
    end

    class CreatePurchaseIntentRequestPriceOriginal < T::Struct
      const :id, T.nilable(String), default: nil
      const :nominal, T.nilable(Inttegro::Models::CreatePurchaseIntentRequestPriceOriginalNominal), default: nil
    end

    class CreatePurchaseIntentRequestPrice < T::Struct
      const :id, T.nilable(String), default: nil
      const :nominal, T.nilable(Inttegro::Models::CreatePurchaseIntentRequestPriceNominal), default: nil
      const :original, T.nilable(Inttegro::Models::CreatePurchaseIntentRequestPriceOriginal), default: nil
      const :original_id, T.nilable(String), default: nil
    end

    class CreatePurchaseIntentRequestQuantity < T::Struct
      const :min, Integer
      const :max, T.nilable(Integer), default: nil
    end

    class CreatePurchaseIntentRequestUsage < T::Struct
      const :single_use, T.nilable(T::Boolean), default: nil
      const :multi_use, T.nilable(T::Boolean), default: nil
    end

    class CreatePurchaseIntentRequest < T::Struct
      const :product, T.nilable(Inttegro::Models::CreatePurchaseIntentRequestProduct), default: nil
      const :product_id, T.nilable(String), default: nil
      const :price, T.nilable(Inttegro::Models::CreatePurchaseIntentRequestPrice), default: nil
      const :price_id, T.nilable(String), default: nil
      const :quantity, Inttegro::Models::CreatePurchaseIntentRequestQuantity
      const :usage, T.nilable(Inttegro::Models::CreatePurchaseIntentRequestUsage), default: nil
      const :expires_at, T.nilable(String), default: nil
    end

    class CreateRefundLineItem < T::Struct
      const :order_line_item_id, String
      const :reason, T.nilable(Inttegro::Models::RefundReason), default: nil
      const :reason_details, T.nilable(String), default: nil
      const :refund_amount, Inttegro::Models::RefundMoney
    end

    class CreateRefundRequest < T::Struct
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :line_items, T::Array[Inttegro::Models::CreateRefundLineItem]
      const :order_id, String
      const :reason, Inttegro::Models::RefundReason
      const :reason_details, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :request_meta, T.nilable(Inttegro::Models::RefundRequestMeta), default: nil
    end

    class UploadRequestConstraints < T::Struct
      const :min_size, T.nilable(Integer), default: nil
      const :max_size, T.nilable(Integer), default: nil
      const :exact_size, T.nilable(Integer), default: nil
      const :content_types, T.nilable(T::Array[String]), default: nil
      const :extensions, T.nilable(T::Array[String]), default: nil
      const :filename, T.nilable(String), default: nil
    end

    class UploadRequestDisplay < T::Struct
      const :title, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :help_text, T.nilable(String), default: nil
    end

    class FileParty < T::Struct
      const :type, T.nilable(String), default: nil
      const :id, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :email, T.nilable(String), default: nil
    end

    class FileResource < T::Struct
      const :type, T.nilable(String), default: nil
      const :id, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
    end

    class UploadRequestAttemptsRequest < T::Struct
      const :max_attempts, T.nilable(Integer), default: nil
    end

    class CreateUploadRequestRequest < T::Struct
      const :purpose, String
      const :constraints, T.nilable(Inttegro::Models::UploadRequestConstraints), default: nil
      const :display_data, T.nilable(Inttegro::Models::UploadRequestDisplay), default: nil, name: "display"
      const :subject, T.nilable(Inttegro::Models::FileParty), default: nil
      const :recipient, T.nilable(Inttegro::Models::FileParty), default: nil
      const :resource, T.nilable(Inttegro::Models::FileResource), default: nil
      const :requester, T.nilable(Inttegro::Models::FileActorInput), default: nil
      const :attempts, T.nilable(Inttegro::Models::UploadRequestAttemptsRequest), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :expires_at, T.nilable(String), default: nil
    end

    class CustomerBalanceValue < T::Struct
      const :as_of, String
      const :available, Inttegro::Models::Money
    end

    class CustomerAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, String
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end

    class Customer < T::Struct
      const :balance, T::Hash[String, Inttegro::Models::CustomerBalanceValue]
      const :billing_address, T.nilable(Inttegro::Models::CustomerAddress), default: nil
      const :created_at, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :email_address, T.nilable(String), default: nil
      const :guest, T::Boolean
      const :id, String
      const :name, String
      const :phone_number, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :shipping_address, T.nilable(Inttegro::Models::CustomerAddress), default: nil
      const :suffix, T.nilable(String), default: nil
      const :title, T.nilable(String), default: nil
      const :updated_at, T.nilable(String), default: nil
    end

    class CustomerPage < T::Struct
      const :customers, T::Array[Inttegro::Models::Customer]
      const :number, Integer
      const :size, Integer
    end

    class CustomerResponse < T::Struct
      const :customer, T.nilable(Inttegro::Models::Customer), default: nil
      const :error, T.nilable(Inttegro::Models::Error), default: nil
    end

    class DeleteFileRequest < T::Struct
      const :file_id, String
    end

    class DestroySecretKeyRequest < T::Struct
      const :secret_key_id, String
    end

    class SecretKey < T::Struct
      const :id, String
      const :label, T.nilable(String), default: nil
      const :token_type, Inttegro::Enums::SecretKeyTokenType
      const :issued_at, String
      const :updated_at, T.nilable(String), default: nil
      const :expires_at, T.nilable(String), default: nil
      const :status, Inttegro::Enums::SecretKeyStatus
      const :active, T::Boolean
      const :revoked_at, T.nilable(String), default: nil
      const :last_used_at, T.nilable(String), default: nil
      const :usage_count, T.nilable(Integer), default: nil
    end

    class DestroySecretKeyResponse < T::Struct
      const :key, Inttegro::Models::SecretKey
    end

    class DisableAutomaticPayoutsRequest < T::Struct
      # This response intentionally has no fields.
    end

    class PayoutSettingsMutationScheduleSpec < T::Struct
      const :abide, String
      const :id, String
      const :label, String
      const :t_plus, String
    end

    class PayoutSettingsMutationSchedule < T::Struct
      const :description, String
      const :id, String
      const :interval, String
      const :name, String
      const :schedule_on, String
      const :spec, Inttegro::Models::PayoutSettingsMutationScheduleSpec
      const :type, String
    end

    class PayoutSettingsMutation < T::Struct
      const :destinations, T.nilable(T::Hash[String, String]), default: nil
      const :id, T.nilable(String), default: nil
      const :schedule, T.nilable(Inttegro::Models::PayoutSettingsMutationSchedule), default: nil
    end

    class DisableAutomaticPayoutsResponse < T::Struct
      const :settings, T.nilable(Inttegro::Models::PayoutSettingsMutation), default: nil
    end

    class DisableFinancialAccountPullResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountConnectedResponse), default: nil
    end

    class DisableFinancialAccountPushResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountConnectedResponse), default: nil
    end

    class DisactivatePaymentMethodRequest < T::Struct
      const :payment_method_id, String
    end

    class DisactivatePaymentMethodResponse < T::Struct
      const :payment_method, T.nilable(Inttegro::Models::PaymentMethodObject), default: nil
    end

    class FinancialAccountCompactResponse < T::Struct
      const :created_at, String
      const :currency, String
      const :description, T.nilable(String), default: nil
      const :disconnected_at, T.nilable(String), default: nil
      const :id, String
      const :label, T.nilable(String), default: nil
      const :type, Inttegro::Enums::FinancialAccountType
    end

    class DisconnectFinancialAccountResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountCompactResponse), default: nil
    end

    class EnableAutomaticPayoutsRequest < T::Struct
      # This response intentionally has no fields.
    end

    class EnableAutomaticPayoutsResponse < T::Struct
      const :settings, T.nilable(Inttegro::Models::PayoutSettingsMutation), default: nil
    end

    class EnableFinancialAccountPullResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountConnectedResponse), default: nil
    end

    class EnableFinancialAccountPushResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountConnectedResponse), default: nil
    end

    class ErrorEnvelope < T::Struct
      const :error, Inttegro::Models::Error
    end

    class FileActor < T::Struct
      const :type, String
      const :id, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :email, T.nilable(String), default: nil
    end

    class FileApiError < T::Struct
      const :message, T.nilable(String), default: nil
      const :fix_code, T.nilable(String), default: nil
      const :detail, T.nilable(String), default: nil
      const :cause, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
      const :code, T.nilable(String), default: nil
      const :url, T.nilable(String), default: nil
    end

    class FileContentsRequest < T::Struct
      const :file_id, String
      const :disposition, T.nilable(Inttegro::Enums::FileDisposition), default: nil
      const :delivery, T.nilable(Inttegro::Enums::FileDelivery), default: nil
    end

    class FileDelivery < T::Struct
      const :public_url, T.nilable(String), default: nil
      const :cache_control, T.nilable(String), default: nil
      const :content_type, T.nilable(String), default: nil
    end

    class FileLatestError < T::Struct
      const :code, T.nilable(String), default: nil
      const :message, T.nilable(String), default: nil
      const :retryable, T.nilable(T::Boolean), default: nil
      const :at, T.nilable(String), default: nil
    end

    class FileLinkPage < T::Struct
      const :number, Integer
      const :size, Integer
      const :file_links, T::Array[Inttegro::Models::FileLinkObject]
    end

    class FileLinkPageResponse < T::Struct
      const :page, Inttegro::Models::FileLinkPage
    end

    class FileLinkResponse < T::Struct
      const :file_link, Inttegro::Models::FileLinkObject
    end

    class FileMedia < T::Struct
      const :kind, T.nilable(String), default: nil
      const :width, T.nilable(Integer), default: nil
      const :height, T.nilable(Integer), default: nil
      const :duration_ms, T.nilable(Integer), default: nil
      const :page_count, T.nilable(Integer), default: nil
      const :frame_count, T.nilable(Integer), default: nil
      const :color_space, T.nilable(String), default: nil
      const :has_alpha, T.nilable(T::Boolean), default: nil
      const :codec, T.nilable(String), default: nil
      const :aspect_ratio, T.nilable(String), default: nil
    end

    class FileSource < T::Struct
      const :type, T.nilable(Inttegro::Enums::FileSourceType), default: nil
      const :service, T.nilable(String), default: nil
      const :upload_request_id, T.nilable(String), default: nil
    end

    class PublicFileStorage < T::Struct
      const :encoding, Inttegro::Enums::FileStorageEncoding
      const :stored_size, Integer
    end

    class FileObject < T::Struct
      const :id, String
      const :purpose, String
      const :status, Inttegro::Enums::FileStatus
      const :scan_status, Inttegro::Enums::FileScanStatus
      const :name, T.nilable(String), default: nil
      const :filename, T.nilable(String), default: nil
      const :content_type, String
      const :size, Integer
      const :checksum_sha256, String
      const :created_by, Inttegro::Models::FileActor
      const :source, Inttegro::Models::FileSource
      const :media, T.nilable(Inttegro::Models::FileMedia), default: nil
      const :storage, Inttegro::Models::PublicFileStorage
      const :delivery, T.nilable(Inttegro::Models::FileDelivery), default: nil
      const :latest_error, T.nilable(Inttegro::Models::FileLatestError), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :metadata, T.nilable(T::Hash[String, String]), default: nil
      const :created_at, String
      const :updated_at, String
      const :available_at, T.nilable(String), default: nil
      const :expires_at, T.nilable(String), default: nil
    end

    class FilePage < T::Struct
      const :number, Integer
      const :size, Integer
      const :files, T::Array[Inttegro::Models::FileObject]
    end

    class FilePageResponse < T::Struct
      const :page, Inttegro::Models::FilePage
    end

    class FileReferenceInput < T::Struct
      const :file_id, String
      const :field, String
      const :reference, T.nilable(String), default: nil
      const :reference_kind, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
    end

    class FileReferenceReconcileRequest < T::Struct
      const :resource_type, String
      const :resource_id, String
      const :references, T.nilable(T::Array[Inttegro::Models::FileReferenceInput]), default: nil
    end

    class FileReferenceReconcileResponse < T::Struct
      const :reconciled, T::Boolean
    end

    class FileResponse < T::Struct
      const :file, Inttegro::Models::FileObject
    end

    class FileServiceHealthResponse < T::Struct
      const :service, String
      const :status, String
      const :environment, String
      const :checked_at, String
    end

    class FileServiceReadyResponse < T::Struct
      const :service, String
      const :status, String
      const :environment, String
      const :files_base_url, String
      const :checked_at, String
    end

    class FileUploadReceipt < T::Struct
      const :content_type, String
      const :created_at, String
      const :filename, T.nilable(String), default: nil
      const :id, String
      const :name, T.nilable(String), default: nil
      const :size, Integer
      const :status, Inttegro::Enums::FileStatus
    end

    class FinalizeOrderRequest < T::Struct
      const :order_id, String
    end

    class FinalizeOrderResponse < T::Struct
      const :order, T.nilable(Inttegro::Models::Order), default: nil
    end

    class FinancialAccountDoshAccount < T::Struct
      # This response intentionally has no fields.
    end

    class FinancialAccount < T::Struct
      const :app_customer_local_fingerprint, T.nilable(String), default: nil
      const :app_local_fingerprint, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
      const :created_at, String
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :institution, T.nilable(Inttegro::Models::FinancialInstitution), default: nil
      const :label, T.nilable(String), default: nil
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountPullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountPushConfiguration), default: nil
      const :reference, T.nilable(String), default: nil
      const :supplied, T.nilable(Inttegro::Models::ResourceSupply), default: nil
      const :type, Inttegro::Enums::FinancialAccountType
      const :universal_fingerprint, T.nilable(String), default: nil
      const :verification, T.nilable(Inttegro::Models::FinancialAccountCommonResponseVerification), default: nil
      const :bank_account, T.nilable(Inttegro::Models::FinancialAccountBankResponse), default: nil
      const :disconnected_at, T.nilable(String), default: nil
      const :dosh_account, T.nilable(Inttegro::Models::FinancialAccountDoshAccount), default: nil
      const :owner, T.nilable(Inttegro::Models::FinancialAccountOwnerResponse), default: nil
      const :wallet, T.nilable(Inttegro::Models::FinancialAccountWalletResponse), default: nil
    end

    class FinancialAccountAddressUpdateResponse < T::Struct
      const :city, String
      const :country, String
      const :id, T.nilable(String), default: nil
      const :line_1, String
      const :line_2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, String
    end

    class FinancialAccountOwnerInputAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, String
      const :line_1, T.nilable(String), default: nil
      const :line_2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end

    class FinancialAccountOwnerInput < T::Struct
      const :name, String
      const :address, Inttegro::Models::FinancialAccountOwnerInputAddress
    end

    class FinancialAccountRequestBasePullConfiguration < T::Struct
      const :enabled, T.nilable(T::Boolean), default: nil
    end

    class FinancialAccountRequestBasePushConfiguration < T::Struct
      const :enabled, T.nilable(T::Boolean), default: nil
    end

    class FinancialAccountBankRequestBankAccountGhanaBankAccount < T::Struct
      const :holder, T.nilable(Inttegro::Models::FinancialAccountOwnerInput), default: nil
      const :number, String
      const :sort_code, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end

    class FinancialAccountBankRequestBankAccount < T::Struct
      const :type, Inttegro::Enums::BankAccountType
      const :ghana_bank_account, Inttegro::Models::FinancialAccountBankRequestBankAccountGhanaBankAccount
    end

    class FinancialAccountBankRequest < T::Struct
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :description, T.nilable(String), default: nil
      const :label, String
      const :owner, T.nilable(Inttegro::Models::FinancialAccountOwnerInput), default: nil
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountRequestBasePullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountRequestBasePushConfiguration), default: nil
      const :reference, String
      const :type, Inttegro::Enums::FinancialAccountBankRequestType
      const :bank_account, Inttegro::Models::FinancialAccountBankRequestBankAccount
    end

    class GhanaBankAccountUpdateResponse < T::Struct
      const :branch, T.nilable(String), default: nil
      const :holder, Inttegro::Models::FinancialAccountOwnerResponse
      const :name, String
      const :number, String
      const :sort_code, T.nilable(String), default: nil
      const :swift_code, T.nilable(String), default: nil
    end

    class FinancialAccountBankUpdateResponse < T::Struct
      const :id, String
      const :type, Inttegro::Enums::BankAccountType
      const :ghana_bank_account, T.nilable(Inttegro::Models::GhanaBankAccountUpdateResponse), default: nil
    end

    class FinancialAccountCommonResponse < T::Struct
      const :app_customer_local_fingerprint, T.nilable(String), default: nil
      const :app_local_fingerprint, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
      const :created_at, String
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :institution, T.nilable(Inttegro::Models::FinancialInstitution), default: nil
      const :label, T.nilable(String), default: nil
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountPullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountPushConfiguration), default: nil
      const :reference, T.nilable(String), default: nil
      const :supplied, T.nilable(Inttegro::Models::ResourceSupply), default: nil
      const :type, Inttegro::Enums::FinancialAccountType
      const :universal_fingerprint, T.nilable(String), default: nil
      const :verification, T.nilable(Inttegro::Models::FinancialAccountCommonResponseVerification), default: nil
    end

    class FinancialAccountWalletRequestWalletMobileMoney < T::Struct
      const :account_number, String
      const :network, Inttegro::Enums::MobileMoneyNetwork
    end

    class FinancialAccountWalletRequestWallet < T::Struct
      const :type, Inttegro::Enums::WalletType
      const :mobile_money, Inttegro::Models::FinancialAccountWalletRequestWalletMobileMoney
    end

    class FinancialAccountWalletRequest < T::Struct
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :description, T.nilable(String), default: nil
      const :label, String
      const :owner, Inttegro::Models::FinancialAccountOwnerInput
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountRequestBasePullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountRequestBasePushConfiguration), default: nil
      const :reference, String
      const :type, Inttegro::Enums::FinancialAccountWalletRequestType
      const :wallet, Inttegro::Models::FinancialAccountWalletRequestWallet
    end

    class FinancialAccountDoshRequestDoshAccount < T::Struct
      # This response intentionally has no fields.
    end

    class FinancialAccountDoshRequest < T::Struct
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :description, T.nilable(String), default: nil
      const :label, String
      const :owner, Inttegro::Models::FinancialAccountOwnerInput
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountRequestBasePullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountRequestBasePushConfiguration), default: nil
      const :reference, String
      const :type, Inttegro::Enums::FinancialAccountDoshRequestType
      const :dosh_account, Inttegro::Models::FinancialAccountDoshRequestDoshAccount
    end

FinancialAccountCreateRequest = T.type_alias { T.any(Inttegro::Models::FinancialAccountWalletRequest, Inttegro::Models::FinancialAccountBankRequest, Inttegro::Models::FinancialAccountDoshRequest) }

    class FinancialAccountDisableRequest < T::Struct
      const :account_id, String
      const :unset_as_payout_destination, T.nilable(T::Boolean), default: nil
    end

    class FinancialAccountEnablePullRequest < T::Struct
      const :account_id, String
      const :ip_address, T.nilable(String), default: nil
      const :user_agent, T.nilable(String), default: nil
    end

    class FinancialAccountIDRequest < T::Struct
      const :account_id, String
    end

    class FinancialAccountOwnerUpdateInputAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, T.nilable(String), default: nil
      const :line_1, T.nilable(String), default: nil
      const :line_2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end

    class FinancialAccountOwnerUpdateInput < T::Struct
      const :name, T.nilable(String), default: nil
      const :address, T.nilable(Inttegro::Models::FinancialAccountOwnerUpdateInputAddress), default: nil
    end

    class FinancialAccountOwnerUpdateResponse < T::Struct
      const :address, Inttegro::Models::FinancialAccountAddressUpdateResponse
      const :name, String
    end

    class FinancialAccountPage < T::Struct
      const :accounts, T::Array[Inttegro::Models::FinancialAccount]
      const :number, Integer
      const :size, Integer
    end

    class FinancialAccountPageRequest < T::Struct
      const :page_number, Integer
      const :page_size, T.nilable(Integer), default: nil
    end

    class FinancialAccountRequestBase < T::Struct
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :description, T.nilable(String), default: nil
      const :label, String
      const :owner, T.nilable(Inttegro::Models::FinancialAccountOwnerInput), default: nil
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountRequestBasePullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountRequestBasePushConfiguration), default: nil
      const :reference, String
      const :type, Inttegro::Enums::FinancialAccountType
    end

    class FinancialAccountUpdateRequest < T::Struct
      const :account_id, String
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :description, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :owner, T.nilable(Inttegro::Models::FinancialAccountOwnerUpdateInput), default: nil
      const :reference, T.nilable(String), default: nil
    end

    class FinancialAccountUpdateResponseDoshAccount < T::Struct
      # This response intentionally has no fields.
    end

    class FinancialAccountWalletRawResponse < T::Struct
      const :id, String
      const :type, Inttegro::Enums::WalletType
      const :mobile_money, T.nilable(Inttegro::Models::FinancialAccountWalletResponseMobileMoney), default: nil
    end

    class FinancialAccountUpdateResponse < T::Struct
      const :app_customer_local_fingerprint, T.nilable(String), default: nil
      const :app_local_fingerprint, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
      const :created_at, String
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :institution, T.nilable(Inttegro::Models::FinancialInstitution), default: nil
      const :label, T.nilable(String), default: nil
      const :pull_configuration, T.nilable(Inttegro::Models::FinancialAccountPullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::Models::FinancialAccountPushConfiguration), default: nil
      const :reference, T.nilable(String), default: nil
      const :supplied, T.nilable(Inttegro::Models::ResourceSupply), default: nil
      const :type, Inttegro::Enums::FinancialAccountType
      const :universal_fingerprint, T.nilable(String), default: nil
      const :verification, T.nilable(Inttegro::Models::FinancialAccountCommonResponseVerification), default: nil
      const :bank_account, T.nilable(Inttegro::Models::FinancialAccountBankUpdateResponse), default: nil
      const :disconnected_at, T.nilable(String), default: nil
      const :dosh_account, T.nilable(Inttegro::Models::FinancialAccountUpdateResponseDoshAccount), default: nil
      const :owner, T.nilable(Inttegro::Models::FinancialAccountOwnerUpdateResponse), default: nil
      const :wallet, T.nilable(Inttegro::Models::FinancialAccountWalletRawResponse), default: nil
    end

    class FulfillUploadRequestRequest < T::Struct
      const :file, String
    end

    class UploadRequestActor < T::Struct
      const :email, T.nilable(String), default: nil
      const :id, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :type, String
    end

    class UploadRequestAttempts < T::Struct
      const :max_attempts, T.nilable(Integer), default: nil
      const :attempt_count, Integer
      const :failed_attempt_count, Integer
      const :last_attempted_at, T.nilable(String), default: nil
    end

    class UploadRequestLatestError < T::Struct
      const :code, T.nilable(String), default: nil
      const :param, T.nilable(String), default: nil
      const :message, T.nilable(String), default: nil
      const :retryable, T.nilable(T::Boolean), default: nil
      const :at, T.nilable(String), default: nil
    end

    class UploadRequestReviewReason < T::Struct
      const :code, String
      const :message, String
      const :param, T.nilable(String), default: nil
    end

    class UploadRequestReview < T::Struct
      const :created_at, String
      const :decision, Inttegro::Enums::UploadReviewDecision
      const :file_id, T.nilable(String), default: nil
      const :public_message, T.nilable(String), default: nil
      const :reasons, T.nilable(T::Array[Inttegro::Models::UploadRequestReviewReason]), default: nil
      const :reviewed_at, String
      const :type, Inttegro::Enums::UploadReviewType
    end

    class UploadRequestAttempt < T::Struct
      const :attempted_at, String
      const :content_type, T.nilable(String), default: nil
      const :declared_size, T.nilable(Integer), default: nil
      const :error, T.nilable(Inttegro::Models::UploadRequestLatestError), default: nil
      const :failed_at, T.nilable(String), default: nil
      const :file_id, T.nilable(String), default: nil
      const :filename, T.nilable(String), default: nil
      const :id, String
      const :ordinal, Integer
      const :review, T.nilable(Inttegro::Models::UploadRequestReview), default: nil
      const :status, String
      const :succeeded_at, T.nilable(String), default: nil
      const :upload_request_id, String
    end

    class UploadRequestWithAttemptObject < T::Struct
      const :id, String
      const :purpose, String
      const :status, Inttegro::Enums::UploadRequestStatus
      const :active, T::Boolean
      const :file_id, T.nilable(String), default: nil
      const :upload_url, T.nilable(String), default: nil
      const :constraints, Inttegro::Models::UploadRequestConstraints
      const :display_data, Inttegro::Models::UploadRequestDisplay, name: "display"
      const :subject, Inttegro::Models::FileParty
      const :recipient, Inttegro::Models::FileParty
      const :resource, Inttegro::Models::FileResource
      const :requester, Inttegro::Models::UploadRequestActor
      const :attempts, Inttegro::Models::UploadRequestAttempts
      const :latest_error, T.nilable(Inttegro::Models::UploadRequestLatestError), default: nil
      const :canceled_by, T.nilable(Inttegro::Models::UploadRequestActor), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :metadata, T.nilable(T::Hash[String, String]), default: nil
      const :created_at, String
      const :updated_at, String
      const :expires_at, String
      const :uploading_at, T.nilable(String), default: nil
      const :fulfilled_at, T.nilable(String), default: nil
      const :expired_at, T.nilable(String), default: nil
      const :canceled_at, T.nilable(String), default: nil
      const :attempt, T.nilable(Inttegro::Models::UploadRequestAttempt), default: nil
    end

    class FulfillUploadRequestResponse < T::Struct
      const :upload_request, Inttegro::Models::UploadRequestWithAttemptObject
      const :file, Inttegro::Models::FileUploadReceipt
    end

    class GenerateSecretKeyRequest < T::Struct
      const :label, T.nilable(String), default: nil
    end

    class GeneratedSecretKey < T::Struct
      const :id, String
      const :label, T.nilable(String), default: nil
      const :token_type, Inttegro::Enums::SecretKeyTokenType
      const :issued_at, String
      const :token, String
    end

    class GenerateSecretKeyResponse < T::Struct
      const :key, Inttegro::Models::GeneratedSecretKey
    end

    class GetPaymentMethodSettingsRequest < T::Struct
      # This response intentionally has no fields.
    end

    class PaymentMethodTypeSetting < T::Struct
      const :type, T.nilable(Inttegro::Enums::PaymentMethodType), default: nil
      const :name, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :enabled, T::Boolean
      const :confirms_use, T::Boolean
    end

    class PaymentMethodSettings < T::Struct
      const :mobile_money, T.nilable(Inttegro::Models::PaymentMethodTypeSetting), default: nil
      const :bank_account, T.nilable(Inttegro::Models::PaymentMethodTypeSetting), default: nil
      const :card, T.nilable(Inttegro::Models::PaymentMethodTypeSetting), default: nil
      const :motito, T.nilable(Inttegro::Models::PaymentMethodTypeSetting), default: nil
    end

    class GetPaymentMethodSettingsResponse < T::Struct
      const :settings, Inttegro::Models::PaymentMethodSettings
    end

    class GetPayoutSettingsRequest < T::Struct
      # This response intentionally has no fields.
    end

    class PayoutSettingsLookupScheduleAgingSpec < T::Struct
      const :abide, String
      const :label, String
      const :t_plus, String
    end

    class PayoutSettingsLookupSchedule < T::Struct
      const :aging_spec, Inttegro::Models::PayoutSettingsLookupScheduleAgingSpec
      const :description, String
      const :interval, String
      const :name, String
      const :schedule_on, String
      const :type, String
    end

    class PayoutSettingsLookup < T::Struct
      const :destinations, T::Hash[String, String]
      const :fx_enabled, T.nilable(T::Boolean), default: nil
      const :schedule, T.nilable(Inttegro::Models::PayoutSettingsLookupSchedule), default: nil
    end

    class GetPayoutSettingsResponse < T::Struct
      const :settings, T.nilable(Inttegro::Models::PayoutSettingsLookup), default: nil
    end

    class InitiateOTPRequest < T::Struct
      const :async_delivery, T.nilable(T::Boolean), default: nil
      const :message_template, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipient, String
      const :sender, T.nilable(String), default: nil
      const :service_name, String
      const :token_alphabet, T.nilable(String), default: nil
      const :token_alphabet_type, T.nilable(Inttegro::Enums::OTPAlphabetType), default: nil
      const :token_size, Integer
      const :validity_duration_in_minutes, T.nilable(Integer), default: nil
    end

    class OTPTransmission < T::Struct
      const :recipient, String
      const :sender_id, String
      const :sent_at, T.nilable(String), default: nil
      const :sent_via, T.nilable(Inttegro::Enums::OTPTransmissionSentVia), default: nil
      const :status, T.nilable(Inttegro::Enums::OTPTransmissionStatus), default: nil
    end

    class OTPTransaction < T::Struct
      const :cancel_reason, T.nilable(String), default: nil
      const :canceled_at, T.nilable(String), default: nil
      const :expires_at, String
      const :full_message, String
      const :id, String
      const :initiated_at, String
      const :status, Inttegro::Enums::OTPStatus
      const :transmission, T.nilable(Inttegro::Models::OTPTransmission), default: nil
    end

    class InitiateOTPResponse < T::Struct
      const :transaction, Inttegro::Models::OTPTransaction
    end

    class ListCountrySpecsRequest < T::Struct
      # This response intentionally has no fields.
    end

    class ListCountrySpecsResponse < T::Struct
      const :countries, T::Hash[String, Inttegro::Models::CountrySpecification]
    end

    class LookupApplicationResponseApp < T::Struct
      const :id, String
      const :name, String
      const :alias, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :created_at, String
      const :updated_at, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
    end

    class LookupApplicationResponse < T::Struct
      const :app, Inttegro::Models::LookupApplicationResponseApp
    end

    class LookupBalanceTransactionRequest < T::Struct
      const :transaction_id, String
    end

    class LookupBalancesRequest < T::Struct
      # This response intentionally has no fields.
    end

    class LookupBroadcastRequest < T::Struct
      const :broadcast_id, String
    end

    class LookupBroadcastResponse < T::Struct
      const :broadcast, T.nilable(Inttegro::Models::BroadcastDetail), default: nil
    end

    class LookupChimeRequest < T::Struct
      const :chime_id, String
    end

    class LookupCustomerRequest < T::Struct
      const :customer_id, String
    end

    class LookupFileLinkRequest < T::Struct
      const :id, String
    end

    class LookupFileRequest < T::Struct
      const :file_id, String
    end

    class LookupFinancialAccountResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccount), default: nil
    end

    class LookupOTPRequest < T::Struct
      const :transaction_id, String
    end

    class LookupOTPResponse < T::Struct
      const :transaction, Inttegro::Models::OTPTransaction
    end

    class LookupOrderRequest < T::Struct
      const :order_id, String
    end

    class LookupPaymentMethodRequest < T::Struct
      const :payment_method_id, String
    end

    class LookupPaymentMethodResponse < T::Struct
      const :payment_method, T.nilable(Inttegro::Models::PaymentMethodObject), default: nil
    end

    class LookupPayoutRequest < T::Struct
      const :payout_id, String
    end

    class LookupPayoutResponse < T::Struct
      const :payout, T.nilable(Inttegro::Models::Payout), default: nil
    end

    class LookupPriceRequest < T::Struct
      const :price_id, String
    end

    class LookupProductRequest < T::Struct
      const :product_id, String
    end

    class LookupPurchaseIntentRequest < T::Struct
      const :id, String
    end

    class LookupRefundRequest < T::Struct
      const :refund_id, String
    end

    class LookupScheduleRequest < T::Struct
      const :schedule_id, String
    end

    class LookupSecretKeyRequest < T::Struct
      const :secret_key_id, String
    end

    class LookupSecretKeyResponse < T::Struct
      const :key, Inttegro::Models::SecretKey
    end

    class LookupUploadRequestRequest < T::Struct
      const :id, String
    end

    class MessageTemplateVariableItem < T::Struct
      const :about, T.nilable(String), default: nil
      const :default, T.nilable(Object), default: nil
      const :name, String
      const :required, T::Boolean
      const :type, Inttegro::Enums::MessageTemplateVariableItemType
    end

    class MessageTemplateVariable < T::Struct
      const :about, T.nilable(String), default: nil
      const :default, T.nilable(Object), default: nil
      const :items, T.nilable(T::Array[Inttegro::Models::MessageTemplateVariableItem]), default: nil
      const :name, String
      const :required, T::Boolean
      const :type, Inttegro::Enums::MessageTemplateVariableType
    end

    class MessageTemplate < T::Struct
      const :id, String
      const :name, String
      const :about, T.nilable(String), default: nil
      const :channel, Inttegro::Enums::MessageTemplateChannel
      const :purpose, String
      const :locale, String
      const :status, Inttegro::Enums::MessageTemplateStatus
      const :version, Integer
      const :published_version, T.nilable(Integer), default: nil
      const :draft_version, Integer
      const :has_unpublished_changes, T::Boolean
      const :variables, T.nilable(T::Array[Inttegro::Models::MessageTemplateVariable]), default: nil
      const :sms, T.nilable(Inttegro::Models::MessageTemplateSMSContent), default: nil
      const :email, T.nilable(Inttegro::Models::MessageTemplateEmailContent), default: nil
      const :attachments, T.nilable(Inttegro::Models::MessageTemplateAttachmentIDs), default: nil
      const :created_at, String
      const :updated_at, String
      const :published_at, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
    end

    class MessageTemplateCreateFields < T::Struct
      const :name, String
      const :about, T.nilable(String), default: nil
      const :channel, Inttegro::Enums::MessageTemplateChannel
      const :purpose, String
      const :locale, T.nilable(String), default: nil
      const :variables, T.nilable(T::Array[Inttegro::Models::MessageTemplateVariableInput]), default: nil
    end

    class MessageTemplateEnvelope < T::Struct
      const :message_template, Inttegro::Models::MessageTemplate
    end

    class MessageTemplateIDRequest < T::Struct
      const :id, String
    end

    class MessageTemplateScannedLink < T::Struct
      const :host, T.nilable(String), default: nil
      const :raw, String
      const :reason, T.nilable(String), default: nil
      const :scheme, String
      const :status, String
    end

    class MessageTemplateSafetyResult < T::Struct
      const :content_hash, String
      const :links, T.nilable(T::Array[Inttegro::Models::MessageTemplateScannedLink]), default: nil
      const :normalized_text, String
      const :quarantine_notes, T.nilable(String), default: nil
      const :reason_codes, T.nilable(T::Array[String]), default: nil
      const :sanitized_html, T.nilable(String), default: nil
      const :scanner, String
      const :status, Inttegro::Enums::ContentSafetyStatus
    end

    class MessageTemplatesPage < T::Struct
      const :number, Integer
      const :size, Integer
      const :message_templates, T::Array[Inttegro::Models::MessageTemplate]
    end

    class MessageTemplatesPageEnvelope < T::Struct
      const :page, Inttegro::Models::MessageTemplatesPage
    end

    class MobileMoney < T::Struct
      const :network, Inttegro::Enums::MobileMoneyNetwork
      const :account_number, String
    end

    class OTPVerificationAttemptResult < T::Struct
      const :detail, T.nilable(String), default: nil
      const :verdict, Inttegro::Enums::OTPVerificationVerdict
    end

    class OTPVerificationAttempt < T::Struct
      const :attempted_at, String
      const :id, String
      const :presented_token, String
      const :recipient, String
      const :result, Inttegro::Models::OTPVerificationAttemptResult
    end

    class OrderCreateResponseOrderCustomerBillingAddress < T::Struct
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :city, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :country, T.nilable(String), default: nil
    end

    class OrderCreateResponseOrderCustomerShippingAddress < T::Struct
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :city, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :country, T.nilable(String), default: nil
    end

    class OrderCreateResponseOrderCustomer < T::Struct
      const :id, String
      const :name, String
      const :email_address, String
      const :phone_number, String
      const :billing_address, T.nilable(Inttegro::Models::OrderCreateResponseOrderCustomerBillingAddress), default: nil
      const :shipping_address, T.nilable(Inttegro::Models::OrderCreateResponseOrderCustomerShippingAddress), default: nil
      const :created_at, String
    end

    class OrderCreateResponseOrderLineItemGroupLineItemsItemProduct < T::Struct
      const :id, String
      const :name, String
      const :about, T.nilable(String), default: nil
      const :type, Inttegro::Enums::ProductType
      const :price, T.nilable(Inttegro::Models::Money), default: nil
      const :quantity, Integer
      const :tax_code, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    end

    class OrderCreateResponseOrderLineItemGroupLineItemsItemFee < T::Struct
      const :id, String
      const :label, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :amount, Inttegro::Models::Money
    end

    class OrderCreateResponseOrderLineItemGroupLineItemsItemShipping < T::Struct
      const :id, String
      const :fee, Inttegro::Models::Money
    end

    class OrderCreateResponseOrderLineItemGroupLineItemsItem < T::Struct
      const :type, Inttegro::Enums::LineItemType
      const :product, T.nilable(Inttegro::Models::OrderCreateResponseOrderLineItemGroupLineItemsItemProduct), default: nil
      const :fee, T.nilable(Inttegro::Models::OrderCreateResponseOrderLineItemGroupLineItemsItemFee), default: nil
      const :shipping, T.nilable(Inttegro::Models::OrderCreateResponseOrderLineItemGroupLineItemsItemShipping), default: nil
    end

    class OrderCreateResponseOrderLineItemGroup < T::Struct
      const :line_items, T::Array[Inttegro::Models::OrderCreateResponseOrderLineItemGroupLineItemsItem]
      const :total, Inttegro::Models::Money
    end

    class OrderCreateResponseOrderPaymentBalanceTransactionPayoutConfigurationDestination < T::Struct
      const :financial_account_id, T.nilable(String), default: nil
    end

    class OrderCreateResponseOrderPaymentBalanceTransactionPayoutConfiguration < T::Struct
      const :enable_fx, T.nilable(T::Boolean), default: nil
      const :destination, T.nilable(Inttegro::Models::OrderCreateResponseOrderPaymentBalanceTransactionPayoutConfigurationDestination), default: nil
    end

    class OrderCreateResponseOrderPaymentBalanceTransaction < T::Struct
      const :id, String
      const :payout_id, T.nilable(String), default: nil
      const :payment_id, T.nilable(String), default: nil
      const :refund_id, T.nilable(String), default: nil
      const :order_id, String
      const :created_at, String
      const :paid_at, T.nilable(String), default: nil
      const :amount, Inttegro::Models::Money
      const :payout_configuration, T.nilable(Inttegro::Models::OrderCreateResponseOrderPaymentBalanceTransactionPayoutConfiguration), default: nil
      const :type, Inttegro::Enums::BalanceTransactionType
    end

    class OrderCreateResponseOrderPayment < T::Struct
      const :id, String
      const :status, Inttegro::Enums::CheckoutPaymentStatus
      const :statement_descriptor, T.nilable(String), default: nil
      const :amount, Inttegro::Models::Money
      const :payment_method, Inttegro::Models::PaymentMethodObject
      const :next_action, T.nilable(Inttegro::Models::PaymentNextAction), default: nil
      const :initiated_at, String
      const :balance_transaction, T.nilable(Inttegro::Models::OrderCreateResponseOrderPaymentBalanceTransaction), default: nil
    end

    class OrderCreateResponseOrderShipping < T::Struct
      # This response intentionally has no fields.
    end

    class OrderCreateResponseOrder < T::Struct
      const :id, String
      const :number, String
      const :receipt_number, T.nilable(String), default: nil
      const :invoice_settings, T.nilable(Inttegro::Models::InvoiceSettings), default: nil
      const :status, Inttegro::Enums::CheckoutOrderStatus
      const :customer, Inttegro::Models::OrderCreateResponseOrderCustomer
      const :line_item_group, Inttegro::Models::OrderCreateResponseOrderLineItemGroup
      const :payment, T.nilable(Inttegro::Models::OrderCreateResponseOrderPayment), default: nil
      const :shipping, T.nilable(Inttegro::Models::OrderCreateResponseOrderShipping), default: nil
      const :initiated_at, String
      const :sealed_at, String
    end

    class OrderCreateResponse < T::Struct
      const :order, Inttegro::Models::OrderCreateResponseOrder
    end

    class OrderDocumentDeliveryAttempt < T::Struct
      const :channel, T.nilable(Inttegro::Enums::DeliveryChannel), default: nil
      const :chime_id, T.nilable(String), default: nil
    end

    class OrderDocumentDeliveryFailure < T::Struct
      const :channel, T.nilable(Inttegro::Enums::DeliveryChannel), default: nil
      const :error, T.nilable(String), default: nil
    end

    class OrderDocumentDelivery < T::Struct
      const :deliveries, T.nilable(T::Array[Inttegro::Models::OrderDocumentDeliveryAttempt]), default: nil
      const :document_kind, T.nilable(Inttegro::Enums::OrderDocumentKind), default: nil
      const :document_url, T.nilable(String), default: nil
      const :failed_channels, T.nilable(T::Array[Inttegro::Enums::DeliveryChannel]), default: nil
      const :failures, T.nilable(T::Array[Inttegro::Models::OrderDocumentDeliveryFailure]), default: nil
      const :sent_channels, T.nilable(T::Array[Inttegro::Enums::DeliveryChannel]), default: nil
    end

    class OrderDocumentDeliveryRequest < T::Struct
      const :order_id, String
    end

    class OrderDocumentDeliveryResponse < T::Struct
      const :delivery, T.nilable(Inttegro::Models::OrderDocumentDelivery), default: nil
      const :error, T.nilable(Inttegro::Models::Error), default: nil
      const :order, T.nilable(Inttegro::Models::Order), default: nil
    end

    class OrderResponse < T::Struct
      const :order, Inttegro::Models::Order
    end

    class PageBalanceTransactionsRequest < T::Struct
      const :page_number, Integer
      const :page_size, Integer
    end

    class PageChimesRequest < T::Struct
      const :customer_id, T.nilable(String), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
      const :recipient, T.nilable(String), default: nil
    end

    class PageChimesResponsePage < T::Struct
      const :number, Integer
      const :size, Integer
      const :chimes, T::Array[Inttegro::Models::Chime]
    end

    class PageChimesResponse < T::Struct
      const :page, T.nilable(Inttegro::Models::PageChimesResponsePage), default: nil
    end

    class PageCustomersRequest < T::Struct
      const :page_number, Integer
      const :page_size, T.nilable(Integer), default: nil
    end

    class PageCustomersResponse < T::Struct
      const :page, T.nilable(Inttegro::Models::CustomerPage), default: nil
    end

    class PageFileLinksRequest < T::Struct
      const :file_id, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Enums::FileLinkStatus), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
    end

    class PageFilesRequest < T::Struct
      const :purpose, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Enums::FileStatus), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
      const :created_after, T.nilable(String), default: nil
      const :created_before, T.nilable(String), default: nil
    end

    class PageFinancialAccountsRequest < T::Struct
      const :page_number, Integer
      const :page_size, T.nilable(Integer), default: nil
    end

    class PageFinancialAccountsResponsePageAccountsItem < T::Struct
      const :id, T.nilable(String), default: nil
      const :type, T.nilable(Inttegro::Enums::FinancialAccountType), default: nil
      const :currency, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :created_at, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    end

    class PageFinancialAccountsResponsePage < T::Struct
      const :number, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
      const :accounts, T.nilable(T::Array[Inttegro::Models::PageFinancialAccountsResponsePageAccountsItem]), default: nil
    end

    class PageFinancialAccountsResponse < T::Struct
      const :page, T.nilable(Inttegro::Models::PageFinancialAccountsResponsePage), default: nil
      const :error, T.nilable(Inttegro::Models::Error), default: nil
    end

    class PageFinancialAccountsResponseInline < T::Struct
      const :page, T.nilable(Inttegro::Models::FinancialAccountPage), default: nil
    end

    class PageMessageTemplatesRequest < T::Struct
      const :page, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
      const :status, T.nilable(Inttegro::Enums::MessageTemplateStatus), default: nil
      const :channel, T.nilable(Inttegro::Enums::MessageTemplateChannel), default: nil
      const :purpose, T.nilable(String), default: nil
      const :locale, T.nilable(String), default: nil
    end

    class PageOrdersRequest < T::Struct
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, Integer
      const :customer_id, T.nilable(String), default: nil
    end

    class PageOrdersResponsePage < T::Struct
      const :number, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
      const :orders, T.nilable(T::Array[Inttegro::Models::Order]), default: nil
    end

    class PageOrdersResponse < T::Struct
      const :page, T.nilable(Inttegro::Models::PageOrdersResponsePage), default: nil
    end

    class PagePayoutsRequest < T::Struct
      const :page_number, Integer
      const :page_size, T.nilable(Integer), default: nil
    end

    class PagePayoutsResponsePage < T::Struct
      const :number, Integer
      const :size, Integer
      const :payouts, T.nilable(T::Array[Inttegro::Models::Payout]), default: nil
    end

    class PagePayoutsResponse < T::Struct
      const :page, T.nilable(Inttegro::Models::PagePayoutsResponsePage), default: nil
    end

    class PageProductsRequest < T::Struct
      const :page_number, Integer
      const :page_size, T.nilable(Integer), default: nil
    end

    class ProductPriceSummaryNominal < T::Struct
      const :currency, String
      const :value, Integer
    end

    class ProductPriceSummary < T::Struct
      const :id, String
      const :active, T::Boolean
      const :label, T.nilable(String), default: nil
      const :nominal, Inttegro::Models::ProductPriceSummaryNominal
    end

    class ProductShipmentDelivery < T::Struct
      # This response intentionally has no fields.
    end

    class ProductShipmentDownload < T::Struct
      # This response intentionally has no fields.
    end

    class ProductShipmentRender < T::Struct
      # This response intentionally has no fields.
    end

    class ProductShipmentService < T::Struct
      # This response intentionally has no fields.
    end

    class ProductShipmentStream < T::Struct
      # This response intentionally has no fields.
    end

    class ProductShipment < T::Struct
      const :type, Inttegro::Enums::ProductShipmentType
      const :delivery, T.nilable(Inttegro::Models::ProductShipmentDelivery), default: nil
      const :download, T.nilable(Inttegro::Models::ProductShipmentDownload), default: nil
      const :render, T.nilable(Inttegro::Models::ProductShipmentRender), default: nil
      const :service, T.nilable(Inttegro::Models::ProductShipmentService), default: nil
      const :stream, T.nilable(Inttegro::Models::ProductShipmentStream), default: nil
    end

    class Product < T::Struct
      const :id, String
      const :type, Inttegro::Enums::ProductType
      const :reference, T.nilable(String), default: nil
      const :name, String
      const :description, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :category, T.nilable(String), default: nil
      const :prices, T.nilable(T::Array[Inttegro::Models::ProductPriceSummary]), default: nil
      const :shipment, T.nilable(Inttegro::Models::ProductShipment), default: nil
      const :media, T.nilable(Inttegro::Models::ProductMedia), default: nil
      const :attributes, T.nilable(T::Array[Inttegro::Models::ProductAttribute]), default: nil
      const :dimensions, T.nilable(Inttegro::Models::ProductDimensions), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :active, T::Boolean
      const :created_at, String
      const :updated_at, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
      const :published_at, T.nilable(String), default: nil
      const :unit_dim, T.nilable(String), default: nil
    end

    class PageProductsResponsePage < T::Struct
      const :number, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
      const :products, T.nilable(T::Array[Inttegro::Models::Product]), default: nil
    end

    class PageProductsResponse < T::Struct
      const :page, T.nilable(Inttegro::Models::PageProductsResponsePage), default: nil
    end

    class PagePurchaseIntentsRequest < T::Struct
      const :page_number, Integer
      const :page_size, Integer
    end

    class PurchaseIntentMoney < T::Struct
      const :currency, String
      const :value, Integer
    end

    class PurchaseIntentActivityAttribution < T::Struct
      const :campaign, T.nilable(String), default: nil
      const :channel, T.nilable(String), default: nil
      const :content, T.nilable(String), default: nil
      const :landing_url, T.nilable(String), default: nil
      const :medium, T.nilable(String), default: nil
      const :referrer, T.nilable(String), default: nil
      const :referrer_host, T.nilable(String), default: nil
      const :source, T.nilable(String), default: nil
      const :term, T.nilable(String), default: nil
    end

    class PurchaseIntentActivityVisitor < T::Struct
      const :browser, T.nilable(String), default: nil
      const :city, T.nilable(String), default: nil
      const :country, T.nilable(String), default: nil
      const :device, T.nilable(String), default: nil
      const :ip_address, T.nilable(String), default: nil
      const :os, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
      const :session_id, T.nilable(String), default: nil
      const :timezone, T.nilable(String), default: nil
      const :user_agent, T.nilable(String), default: nil
      const :visitor_id, T.nilable(String), default: nil
    end

    class PurchaseIntentActivity < T::Struct
      const :amount, T.nilable(Inttegro::Models::PurchaseIntentMoney), default: nil
      const :attribution, T.nilable(Inttegro::Models::PurchaseIntentActivityAttribution), default: nil
      const :created_at, String
      const :error_code, T.nilable(String), default: nil
      const :id, String
      const :order_id, T.nilable(String), default: nil
      const :payment_id, T.nilable(String), default: nil
      const :product_id, T.nilable(String), default: nil
      const :purchase_intent_id, String
      const :quantity, T.nilable(Integer), default: nil
      const :source, T.nilable(String), default: nil
      const :type, Inttegro::Enums::PurchaseIntentActivityType
      const :variant_product_id, T.nilable(String), default: nil
      const :visitor, T.nilable(Inttegro::Models::PurchaseIntentActivityVisitor), default: nil
    end

    class PurchaseIntentActivityInline < T::Struct
      const :recent, T.nilable(T::Array[Inttegro::Models::PurchaseIntentActivity]), default: nil
    end

    class PurchaseIntentMerchant < T::Struct
      const :app_id, T.nilable(String), default: nil
      const :app_name, T.nilable(String), default: nil
      const :organization_id, T.nilable(String), default: nil
      const :organization_name, T.nilable(String), default: nil
    end

    class PurchaseIntentOriginalPrice < T::Struct
      const :active, T::Boolean
      const :id, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :nominal, Inttegro::Models::PurchaseIntentMoney
    end

    class PurchaseIntentPrice < T::Struct
      const :active, T::Boolean
      const :id, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :nominal, Inttegro::Models::PurchaseIntentMoney
      const :original, T.nilable(Inttegro::Models::PurchaseIntentOriginalPrice), default: nil
    end

    class PurchaseIntentProductAttributesItem < T::Struct
      const :name, String
      const :value, String
    end

    class PurchaseIntentProductDimensions < T::Struct
      # This response intentionally has no fields.
    end

    class PurchaseIntentProductMedia < T::Struct
      # This response intentionally has no fields.
    end

    class PurchaseIntentProductShipment < T::Struct
      # This response intentionally has no fields.
    end

    class PurchaseIntentProduct < T::Struct
      const :id, String
      const :about, T.nilable(String), default: nil
      const :active, T::Boolean
      const :archived_at, T.nilable(String), default: nil
      const :attributes, T.nilable(T::Array[Inttegro::Models::PurchaseIntentProductAttributesItem]), default: nil
      const :category, T.nilable(String), default: nil
      const :created_at, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :dimensions, T.nilable(Inttegro::Models::PurchaseIntentProductDimensions), default: nil
      const :media, T.nilable(Inttegro::Models::PurchaseIntentProductMedia), default: nil
      const :name, String
      const :published_at, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :shipment, T.nilable(Inttegro::Models::PurchaseIntentProductShipment), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :type, Inttegro::Enums::ProductType
      const :unit_dim, T.nilable(String), default: nil
      const :updated_at, T.nilable(String), default: nil
      const :prices, T.nilable(T::Array[Inttegro::Models::ProductPriceSummary]), default: nil
      const :variant_set_id, T.nilable(String), default: nil
    end

    class PurchaseIntentQuantity < T::Struct
      const :min, Integer
      const :max, T.nilable(Integer), default: nil
    end

    class PurchaseIntentUsageOrder < T::Struct
      const :created_at, String
      const :id, String
    end

    class PurchaseIntentUsage < T::Struct
      const :multi_use, T.nilable(T::Boolean), default: nil
      const :order, T.nilable(Inttegro::Models::PurchaseIntentUsageOrder), default: nil
      const :single_use, T.nilable(T::Boolean), default: nil
    end

    class PurchaseIntentVariantAxis < T::Struct
      const :key, String
      const :label, String
      const :position, Integer
    end

    class PurchaseIntentVariant < T::Struct
      const :active, T::Boolean
      const :position, T.nilable(Integer), default: nil
      const :price, T.nilable(Inttegro::Models::PurchaseIntentPrice), default: nil
      const :product, T.nilable(Inttegro::Models::PurchaseIntentProduct), default: nil
      const :product_id, String
      const :variant_values, T::Hash[String, String]
    end

    class PurchaseIntentVariantSetInline < T::Struct
      const :active, T::Boolean
      const :default_product_id, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :name, String
      const :reference, T.nilable(String), default: nil
      const :variant_axes, T::Array[Inttegro::Models::PurchaseIntentVariantAxis]
      const :variants, T::Array[Inttegro::Models::PurchaseIntentVariant]
    end

    class PurchaseIntent < T::Struct
      const :activity, T.nilable(Inttegro::Models::PurchaseIntentActivityInline), default: nil
      const :allow_variants, T::Boolean
      const :application_id, String
      const :created_at, String
      const :expires_at, T.nilable(String), default: nil
      const :id, String
      const :inactive_at, T.nilable(String), default: nil
      const :merchant, T.nilable(Inttegro::Models::PurchaseIntentMerchant), default: nil
      const :price, T.nilable(Inttegro::Models::PurchaseIntentPrice), default: nil
      const :product, T.nilable(Inttegro::Models::PurchaseIntentProduct), default: nil
      const :quantity, Inttegro::Models::PurchaseIntentQuantity
      const :status, Inttegro::Enums::PurchaseIntentStatus
      const :updated_at, T.nilable(String), default: nil
      const :usage, Inttegro::Models::PurchaseIntentUsage
      const :variant_set, T.nilable(Inttegro::Models::PurchaseIntentVariantSetInline), default: nil
    end

    class PagePurchaseIntentsResponsePage < T::Struct
      const :number, Integer
      const :purchase_intents, T::Array[Inttegro::Models::PurchaseIntent]
      const :size, Integer
    end

    class PagePurchaseIntentsResponse < T::Struct
      const :page, Inttegro::Models::PagePurchaseIntentsResponsePage
    end

    class PageRefundsRequest < T::Struct
      const :page_number, Integer
      const :page_size, T.nilable(Integer), default: nil
    end

    class PageSecretKeysRequest < T::Struct
      const :page, T.nilable(Integer), default: nil
      const :number, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
    end

    class SecretKeyPage < T::Struct
      const :number, Integer
      const :size, Integer
      const :count, Integer
      const :total, Integer
      const :has_more, T::Boolean
      const :keys, T::Array[Inttegro::Models::SecretKey]
    end

    class PageSecretKeysResponse < T::Struct
      const :page, Inttegro::Models::SecretKeyPage
    end

    class PageUploadRequestsRequest < T::Struct
      const :purpose, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Enums::UploadRequestStatus), default: nil
      const :resource, T.nilable(Inttegro::Models::FileResource), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
    end

    class PaymentMethodDataMobileMoney < T::Struct
      const :network, Inttegro::Enums::MobileMoneyNetwork
      const :account_number, String
    end

    class PaymentMethodData < T::Struct
      const :type, Inttegro::Enums::PaymentMethodDataType
      const :mobile_money, T.nilable(Inttegro::Models::PaymentMethodDataMobileMoney), default: nil
    end

    class PayOrderRequest < T::Struct
      const :order_id, String
      const :payment_method_data, T.nilable(Inttegro::Models::PaymentMethodData), default: nil
      const :payment_method_id, T.nilable(String), default: nil
      const :paid_out_of_band, T.nilable(T::Boolean), default: nil
    end

    class PaymentMethodOwnerInputAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, String
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end

    class PaymentMethodOwnerInput < T::Struct
      const :address, Inttegro::Models::PaymentMethodOwnerInputAddress
      const :name, String
    end

    class PaymentMethodPageRequest < T::Struct
      const :customer_id, T.nilable(String), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
    end

    class PaymentMethodPageResponsePage < T::Struct
      const :number, Integer
      const :payment_methods, T::Array[Inttegro::Models::PaymentMethodObject]
      const :size, Integer
    end

    class PaymentMethodPageResponse < T::Struct
      const :page, Inttegro::Models::PaymentMethodPageResponsePage
    end

    class PaymentMethodTokenizeBase < T::Struct
      const :customer_id, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :type, Inttegro::Enums::PaymentMethodTokenizeBaseType
    end

    class PaymentResponse < T::Struct
      const :payment_id, T.nilable(String), default: nil
      const :order_id, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::Enums::PaymentResponseStatus), default: nil
      const :requires_confirmation, T.nilable(T::Boolean), default: nil
      const :confirmation_sent, T.nilable(T::Boolean), default: nil
    end

    class PriceNominal < T::Struct
      const :currency, String
      const :value, Integer
    end

    class PriceEmbeddedProduct < T::Struct
      const :id, String
      const :about, T.nilable(String), default: nil
      const :active, T::Boolean
      const :archived_at, T.nilable(String), default: nil
      const :attributes, T.nilable(T::Array[Inttegro::Models::PurchaseIntentProductAttributesItem]), default: nil
      const :category, T.nilable(String), default: nil
      const :created_at, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :dimensions, T.nilable(Inttegro::Models::PurchaseIntentProductDimensions), default: nil
      const :media, T.nilable(Inttegro::Models::PurchaseIntentProductMedia), default: nil
      const :name, String
      const :published_at, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :shipment, T.nilable(Inttegro::Models::PurchaseIntentProductShipment), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :type, Inttegro::Enums::ProductType
      const :unit_dim, T.nilable(String), default: nil
      const :updated_at, T.nilable(String), default: nil
    end

    class Price < T::Struct
      const :id, String
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :active, T::Boolean
      const :nominal, Inttegro::Models::PriceNominal
      const :product, T.nilable(Inttegro::Models::PriceEmbeddedProduct), default: nil
      const :created_at, String
      const :updated_at, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
    end

    class PriceActionRequest < T::Struct
      const :price_id, String
    end

PricePageItem = T.type_alias { Inttegro::Models::Price }

    class PricePageRequest < T::Struct
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
      const :product_id, T.nilable(String), default: nil
    end

    class PricePageResponsePage < T::Struct
      const :number, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
      const :prices, T.nilable(T::Array[Inttegro::Models::PricePageItem]), default: nil
    end

    class PricePageResponse < T::Struct
      const :page, T.nilable(Inttegro::Models::PricePageResponsePage), default: nil
      const :error, T.nilable(Inttegro::Models::Error), default: nil
    end

    class PriceResponse < T::Struct
      const :price, T.nilable(Inttegro::Models::Price), default: nil
      const :error, T.nilable(Inttegro::Models::Error), default: nil
    end

    class ProductActionRequest < T::Struct
      const :product_id, String
    end

    class ProductPriceNominalInline < T::Struct
      const :currency, String
      const :value, Integer
    end

    class ProductPrice < T::Struct
      const :id, String
      const :product_id, T.nilable(String), default: nil
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :active, T::Boolean
      const :nominal, Inttegro::Models::ProductPriceNominalInline
      const :created_at, String
      const :updated_at, T.nilable(String), default: nil
      const :archived_at, T.nilable(String), default: nil
    end

    class ProductResponse < T::Struct
      const :product, T.nilable(Inttegro::Models::Product), default: nil
      const :error, T.nilable(Inttegro::Models::Error), default: nil
    end

    class PurchaseIntentActivityLog < T::Struct
      const :recent, T.nilable(T::Array[Inttegro::Models::PurchaseIntentActivity]), default: nil
    end

    class PurchaseIntentResponse < T::Struct
      const :purchase_intent, Inttegro::Models::PurchaseIntent
    end

    class PurchaseIntentVariantSet < T::Struct
      const :active, T::Boolean
      const :default_product_id, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :name, String
      const :reference, T.nilable(String), default: nil
      const :variant_axes, T::Array[Inttegro::Models::PurchaseIntentVariantAxis]
      const :variants, T::Array[Inttegro::Models::PurchaseIntentVariant]
    end

    class ReconnectFinancialAccountResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountCompactResponse), default: nil
    end

    class RefundPage < T::Struct
      const :number, Integer
      const :refunds, T::Array[Inttegro::Models::Refund]
      const :size, Integer
    end

    class RefundPageResponse < T::Struct
      const :page, Inttegro::Models::RefundPage
    end

    class RefundResponse < T::Struct
      const :refund, Inttegro::Models::Refund
    end

    class RenderMessageTemplatePreviewRequest < T::Struct
      const :message_template, Inttegro::Models::MessageTemplateReference
    end

    class RenderedSMSMessageTemplate < T::Struct
      const :full_message, String
    end

    class RenderedEmailMessageTemplate < T::Struct
      const :subject, String
      const :text, String
      const :html, T.nilable(String), default: nil
      const :from, T.nilable(Inttegro::Models::MessageTemplateMailbox), default: nil
      const :reply_to, T.nilable(Inttegro::Models::MessageTemplateMailbox), default: nil
      const :headers, T.nilable(T::Hash[String, String]), default: nil
      const :safety, T.nilable(Inttegro::Models::MessageTemplateSafetyResult), default: nil
    end

    class RenderedMessageTemplate < T::Struct
      const :channel, Inttegro::Enums::MessageTemplateChannel
      const :attachments, T.nilable(Inttegro::Models::MessageTemplateAttachmentIDs), default: nil
      const :sms, T.nilable(Inttegro::Models::RenderedSMSMessageTemplate), default: nil
      const :email, T.nilable(Inttegro::Models::RenderedEmailMessageTemplate), default: nil
    end

    class RenderMessageTemplatePreviewResponse < T::Struct
      const :message_template, Inttegro::Models::MessageTemplate
      const :rendered, Inttegro::Models::RenderedMessageTemplate
    end

    class RequestConfirmationRequest < T::Struct
      const :order_id, String
    end

    class UploadRequestReviewReasonInput < T::Struct
      const :code, String
      const :message, String
      const :param, T.nilable(String), default: nil
    end

    class ReviewUploadRequestAttemptByIDRequest < T::Struct
      const :attempt_id, String
      const :decision, Inttegro::Enums::UploadReviewDecision
      const :id, String
      const :public_message, T.nilable(String), default: nil
      const :reasons, T.nilable(T::Array[Inttegro::Models::UploadRequestReviewReasonInput]), default: nil
    end

    class ReviewUploadRequestAttemptByOrdinalRequest < T::Struct
      const :attempt_ordinal, Integer
      const :decision, Inttegro::Enums::UploadReviewDecision
      const :id, String
      const :public_message, T.nilable(String), default: nil
      const :reasons, T.nilable(T::Array[Inttegro::Models::UploadRequestReviewReasonInput]), default: nil
    end

ReviewUploadRequestAttemptRequest = T.type_alias { T.any(Inttegro::Models::ReviewUploadRequestAttemptByIDRequest, Inttegro::Models::ReviewUploadRequestAttemptByOrdinalRequest) }

    class RevokeFileLinkRequest < T::Struct
      const :id, String
      const :revoked_by, T.nilable(Inttegro::Models::FileActorInput), default: nil
    end

    class ScheduleError < T::Struct
      const :recipient, T.nilable(String), default: nil
      const :fix_code, T.nilable(String), default: nil
      const :type, T.nilable(String), default: nil
    end

    class ScheduleCancelDetail < T::Struct
      const :chime_ids, T.nilable(T::Array[String]), default: nil
      const :content, String
      const :created_at, String
      const :customer_ids, T.nilable(T::Array[String]), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessage), default: nil
      const :errors, T.nilable(T::Array[Inttegro::Models::ScheduleError]), default: nil
      const :executed_at, T.nilable(String), default: nil
      const :id, String
      const :idempotency_key, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipients, T::Array[String]
      const :send_after, String
      const :sender_id, String
      const :canceled_at, T.nilable(String), default: nil
    end

    class ScheduleCancelResponse < T::Struct
      const :scheduled_chime, T.nilable(Inttegro::Models::ScheduleCancelDetail), default: nil
    end

    class ScheduleChimeRequestRequestMeta < T::Struct
      const :idempotency_key, T.nilable(String), default: nil
    end

    class ScheduleChimeRequest < T::Struct
      const :request_meta, T.nilable(Inttegro::Models::ScheduleChimeRequestRequestMeta), default: nil
      const :recipients, T::Array[Inttegro::Models::ChimeRecipient]
      const :send_after, String
      const :full_message, T.nilable(String), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessageInput), default: nil
      const :message_template, T.nilable(Inttegro::Models::MessageTemplateReference), default: nil
      const :sender_id, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
    end

    class ScheduleCreationDetail < T::Struct
      const :created_at, String
      const :customer_ids, T.nilable(T::Array[String]), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessage), default: nil
      const :executed_at, T.nilable(String), default: nil
      const :full_message, String
      const :id, String
      const :idempotency_key, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipients, T.nilable(T::Array[String]), default: nil
      const :send_after, String
      const :sender_id, String
    end

    class ScheduleDetail < T::Struct
      const :chime_ids, T.nilable(T::Array[String]), default: nil
      const :content, String
      const :created_at, String
      const :customer_ids, T.nilable(T::Array[String]), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessage), default: nil
      const :errors, T.nilable(T::Array[Inttegro::Models::ScheduleError]), default: nil
      const :executed_at, T.nilable(String), default: nil
      const :id, String
      const :idempotency_key, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipients, T::Array[String]
      const :send_after, String
      const :sender_id, String
    end

    class ScheduleLookupResponse < T::Struct
      const :scheduled_chime, T.nilable(Inttegro::Models::ScheduleDetail), default: nil
    end

    class SchedulePayoutRequest < T::Struct
      const :destination_id, String
      const :execute_after, T.nilable(String), default: nil
      const :max_amount, T.nilable(Integer), default: nil
      const :reference, String
    end

    class SchedulePayoutResponse < T::Struct
      const :payout, T.nilable(Inttegro::Models::Payout), default: nil
    end

    class ScheduleResponse < T::Struct
      const :scheduled_chime, T.nilable(Inttegro::Models::ScheduleCreationDetail), default: nil
    end

    class SecretKeyUsageRow < T::Struct
      const :secret_key_id, String
      const :occurred_at, String
      const :auth_result, Inttegro::Enums::SecretKeyAuthResult
    end

    class SecretKeyUsagePage < T::Struct
      const :number, Integer
      const :size, Integer
      const :count, Integer
      const :total, Integer
      const :has_more, T::Boolean
      const :rows, T::Array[Inttegro::Models::SecretKeyUsageRow]
    end

    class SecretKeyUsageRequest < T::Struct
      const :number, T.nilable(Integer), default: nil
      const :page, T.nilable(Integer), default: nil
      const :secret_key_id, String
      const :size, T.nilable(Integer), default: nil
    end

    class SecretKeyUsageResponse < T::Struct
      const :key, Inttegro::Models::SecretKey
      const :usage, Inttegro::Models::SecretKeyUsagePage
    end

    class SendChimeRequestRequestMeta < T::Struct
      const :idempotency_key, T.nilable(String), default: nil
    end

    class SendChimeRequest < T::Struct
      const :recipient, Inttegro::Models::ChimeRecipient
      const :full_message, T.nilable(String), default: nil
      const :email, T.nilable(Inttegro::Models::ChimeEmailMessageInput), default: nil
      const :message_template, T.nilable(Inttegro::Models::MessageTemplateReference), default: nil
      const :sender_id, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :request_meta, T.nilable(Inttegro::Models::SendChimeRequestRequestMeta), default: nil
    end

    class SetPayoutDestinationsRequest < T::Struct
      const :destinations, T::Hash[String, String]
    end

    class SetPayoutDestinationsResponse < T::Struct
      const :settings, T.nilable(Inttegro::Models::PayoutSettingsMutation), default: nil
    end

    class TokenizeMobileMoneyPaymentMethodRequestMobileMoney < T::Struct
      const :account_number, String
      const :network, Inttegro::Enums::MobileMoneyNetwork
    end

    class TokenizeMobileMoneyPaymentMethodRequest < T::Struct
      const :customer_id, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :type, Inttegro::Enums::TokenizeMobileMoneyPaymentMethodRequestType
      const :mobile_money, Inttegro::Models::TokenizeMobileMoneyPaymentMethodRequestMobileMoney
      const :owner, Inttegro::Models::PaymentMethodOwnerInput
    end

    class TokenizePaymentMethodResponse < T::Struct
      const :payment_method, T.nilable(Inttegro::Models::PaymentMethodObject), default: nil
    end

    class UnarchivePaymentMethodRequest < T::Struct
      const :payment_method_id, String
    end

    class UnarchivePaymentMethodResponse < T::Struct
      const :payment_method, T.nilable(Inttegro::Models::PaymentMethodObject), default: nil
    end

    class UpdateApplicationRequest < T::Struct
      const :name, T.nilable(String), default: nil
      const :alias, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :legal_entity_type, T.nilable(String), default: nil
    end

    class UpdateApplicationResponseApp < T::Struct
      const :id, String
      const :name, String
      const :alias, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :created_at, String
      const :updated_at, T.nilable(String), default: nil
    end

    class UpdateApplicationResponse < T::Struct
      const :app, Inttegro::Models::UpdateApplicationResponseApp
    end

    class UpdateCustomerRequest < T::Struct
      const :billing_address, T.nilable(Inttegro::Models::CustomerAddressInput), default: nil
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :customer_id, String
      const :email_address, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :shipping_address, T.nilable(Inttegro::Models::CustomerAddressInput), default: nil
      const :suffix, T.nilable(String), default: nil
      const :title, T.nilable(String), default: nil
    end

    class UpdateFinancialAccountResponse < T::Struct
      const :account, T.nilable(Inttegro::Models::FinancialAccountUpdateResponse), default: nil
    end

    class UpdateMessageTemplateRequest < T::Struct
      const :id, String
      const :name, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :channel, T.nilable(Inttegro::Enums::MessageTemplateChannel), default: nil
      const :purpose, T.nilable(String), default: nil
      const :locale, T.nilable(String), default: nil
      const :variables, T.nilable(T::Array[Inttegro::Models::MessageTemplateVariableInput]), default: nil
      const :sms, T.nilable(Inttegro::Models::MessageTemplateSMSContent), default: nil
      const :email, T.nilable(Inttegro::Models::MessageTemplateEmailContent), default: nil
      const :attachments, T.nilable(Inttegro::Models::MessageTemplateAttachmentIDs), default: nil
    end

    class UpdateOrderRequestPaymentMethodData < T::Struct
      const :type, Inttegro::Enums::UpdateOrderRequestPaymentMethodDataType
      const :mobile_money, T.nilable(Inttegro::Models::PaymentMethodDataMobileMoney), default: nil
    end

    class UpdateOrderRequest < T::Struct
      const :clear_payment_method, T.nilable(T::Boolean), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :invoice_settings, T.nilable(Inttegro::Models::InvoiceSettings), default: nil
      const :finalize, T.nilable(T::Boolean), default: nil
      const :line_items, T.nilable(T::Array[Inttegro::Models::LineItem]), default: nil
      const :number, T.nilable(String), default: nil
      const :receipt_number, T.nilable(String), default: nil
      const :order_id, String
      const :payment_method_data, T.nilable(Inttegro::Models::UpdateOrderRequestPaymentMethodData), default: nil
      const :payment_method_id, T.nilable(String), default: nil
      const :statement_descriptor, T.nilable(String), default: nil
      const :statement_descriptor_prefix, T.nilable(String), default: nil
    end

    class UpdatePaymentMethodRequestOwnerAddress < T::Struct
      const :city, T.nilable(String), default: nil
      const :country, T.nilable(String), default: nil
      const :line1, T.nilable(String), default: nil
      const :line2, T.nilable(String), default: nil
      const :name, T.nilable(String), default: nil
      const :phone_number, T.nilable(String), default: nil
      const :post_code, T.nilable(String), default: nil
      const :region, T.nilable(String), default: nil
    end

    class UpdatePaymentMethodRequestOwner < T::Struct
      const :name, T.nilable(String), default: nil
      const :address, T.nilable(Inttegro::Models::UpdatePaymentMethodRequestOwnerAddress), default: nil
    end

    class UpdatePaymentMethodRequest < T::Struct
      const :payment_method_id, String
      const :custom_data, T.nilable(T::Hash[String, T.nilable(String)]), default: nil
      const :active, T.nilable(T::Boolean), default: nil
      const :archived, T.nilable(T::Boolean), default: nil
      const :owner, T.nilable(Inttegro::Models::UpdatePaymentMethodRequestOwner), default: nil
    end

    class UpdatePaymentMethodResponse < T::Struct
      const :payment_method, T.nilable(Inttegro::Models::PaymentMethodObject), default: nil
    end

    class UpdatePriceRequest < T::Struct
      const :price_id, String
      const :label, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
    end

    class UpdateProductRequest < T::Struct
      const :product_id, String
      const :type, T.nilable(Inttegro::Enums::ProductType), default: nil
      const :name, T.nilable(String), default: nil
      const :description, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :category, T.nilable(String), default: nil
      const :shipment, T.nilable(Inttegro::Models::ProductShipmentInput), default: nil
      const :dimensions, T.nilable(Inttegro::Models::ProductDimensions), default: nil
      const :unit_dimension, T.nilable(String), default: nil
      const :media, T.nilable(Inttegro::Models::ProductMedia), default: nil
      const :images, T.nilable(T::Array[String]), default: nil
      const :attributes, T.nilable(T::Array[Inttegro::Models::ProductAttribute]), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    end

    class UpdatedProduct < T::Struct
      const :id, String
      const :name, String
      const :description, T.nilable(String), default: nil
      const :about, T.nilable(String), default: nil
      const :type, Inttegro::Enums::ProductType
      const :reference, T.nilable(String), default: nil
      const :tax_code, T.nilable(String), default: nil
      const :category, T.nilable(String), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :dimensions, T.nilable(Inttegro::Models::ProductDimensions), default: nil
      const :prices, T.nilable(T::Array[Inttegro::Models::ProductPriceSummary]), default: nil
      const :unit_dim, T.nilable(String), default: nil
      const :created_at, String
      const :updated_at, T.nilable(String), default: nil
    end

    class UpdateProductResponse < T::Struct
      const :product, T.nilable(Inttegro::Models::UpdatedProduct), default: nil
    end

    class UpdatePurchaseIntentRequestQuantity < T::Struct
      const :min, Integer
      const :max, T.nilable(Integer), default: nil
    end

    class UpdatePurchaseIntentRequest < T::Struct
      const :expires_at, T.nilable(String), default: nil
      const :id, T.nilable(String), default: nil
      const :quantity, T.nilable(Inttegro::Models::UpdatePurchaseIntentRequestQuantity), default: nil
      const :purchase_intent_id, T.nilable(String), default: nil
      const :reactivate, T.nilable(T::Boolean), default: nil
    end

    class UpdateSecretKeyRequest < T::Struct
      const :label, String
      const :secret_key_id, String
    end

    class UpdateSecretKeyResponse < T::Struct
      const :key, Inttegro::Models::SecretKey
    end

    class UploadRequestObject < T::Struct
      const :id, String
      const :purpose, String
      const :status, Inttegro::Enums::UploadRequestStatus
      const :active, T::Boolean
      const :file_id, T.nilable(String), default: nil
      const :upload_url, T.nilable(String), default: nil
      const :constraints, Inttegro::Models::UploadRequestConstraints
      const :display_data, Inttegro::Models::UploadRequestDisplay, name: "display"
      const :subject, Inttegro::Models::FileParty
      const :recipient, Inttegro::Models::FileParty
      const :resource, Inttegro::Models::FileResource
      const :requester, Inttegro::Models::UploadRequestActor
      const :attempts, Inttegro::Models::UploadRequestAttempts
      const :latest_error, T.nilable(Inttegro::Models::UploadRequestLatestError), default: nil
      const :canceled_by, T.nilable(Inttegro::Models::UploadRequestActor), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :metadata, T.nilable(T::Hash[String, String]), default: nil
      const :created_at, String
      const :updated_at, String
      const :expires_at, String
      const :uploading_at, T.nilable(String), default: nil
      const :fulfilled_at, T.nilable(String), default: nil
      const :expired_at, T.nilable(String), default: nil
      const :canceled_at, T.nilable(String), default: nil
    end

    class UploadRequestPage < T::Struct
      const :number, Integer
      const :size, Integer
      const :upload_requests, T::Array[Inttegro::Models::UploadRequestObject]
    end

    class UploadRequestPageResponse < T::Struct
      const :page, Inttegro::Models::UploadRequestPage
    end

    class UploadRequestResponse < T::Struct
      const :upload_request, Inttegro::Models::UploadRequestObject
    end

    class UploadRequestValidationErrorResponseError < T::Struct
      const :code, String
      const :param, T.nilable(String), default: nil
      const :message, String
      const :retryable, T::Boolean
    end

    class UploadRequestValidationErrorResponse < T::Struct
      const :upload_request, Inttegro::Models::UploadRequestWithAttemptObject
      const :error, Inttegro::Models::UploadRequestValidationErrorResponseError
    end

    class UploadRequestWithAttemptResponse < T::Struct
      const :upload_request, Inttegro::Models::UploadRequestWithAttemptObject
    end

    class VerifyOTPRequest < T::Struct
      const :transaction_id, String
      const :recipient, String
      const :token, String
    end

    class VerifyOTPResponse < T::Struct
      const :transaction, Inttegro::Models::OTPTransaction
      const :verification_attempt, Inttegro::Models::OTPVerificationAttempt
    end
  end
end
