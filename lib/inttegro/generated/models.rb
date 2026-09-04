# frozen_string_literal: true
# typed: strict
# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require "sorbet-runtime"
require_relative "enums"

module Inttegro
  class ActivatePaymentMethodRequest < T::Struct
    const :payment_method_id, String
  end

  class PaymentMethodBankAccountGhanaBankAccount < T::Struct
    const :branch, T.nilable(String), default: nil
    const :name, T.nilable(String), default: nil
    const :account_number, String
    const :sort_code, T.nilable(String), default: nil
    const :swift_code, T.nilable(String), default: nil
  end

  class PaymentMethodBankAccount < T::Struct
    const :ghana_bank_account, T.nilable(Inttegro::PaymentMethodBankAccountGhanaBankAccount), default: nil
    const :type, Inttegro::BankAccountType
  end

  class PaymentMethodMobileMoney < T::Struct
    const :account_number, String
    const :last4, String
    const :network, Inttegro::MobileMoneyNetwork
  end

  class PaymentMethodOwnerAddress < T::Struct
    const :city, T.nilable(String), default: nil
    const :country, String
    const :line_1, T.nilable(String), default: nil
    const :line_2, T.nilable(String), default: nil
    const :name, T.nilable(String), default: nil
    const :phone_number, T.nilable(String), default: nil
    const :post_code, T.nilable(String), default: nil
    const :region, T.nilable(String), default: nil
  end

  class PaymentMethodOwner < T::Struct
    const :address, T.nilable(Inttegro::PaymentMethodOwnerAddress), default: nil
    const :name, String
  end

  class PaymentMethodSupplied < T::Struct
    const :attempt_id, T.nilable(String), default: nil
    const :by, String
    const :channel, T.nilable(String), default: nil
    const :resource_id, T.nilable(String), default: nil
    const :resource_type, T.nilable(String), default: nil
    const :supplied_at, String
  end

  class PaymentMethodVerification < T::Struct
    const :completed_at, T.nilable(String), default: nil
    const :initiated_at, String
    const :mechanism, T.nilable(String), default: nil
    const :request_id, String
    const :type, String
  end

  class PaymentMethod < T::Struct
    const :active, T::Boolean
    const :app_customer_local_fingerprint, T.nilable(String), default: nil
    const :app_local_fingerprint, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
    const :bank_account, T.nilable(Inttegro::PaymentMethodBankAccount), default: nil
    const :created_at, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :customer_id, String
    const :ephemeral, T.nilable(T::Boolean), default: nil
    const :expires_on, T.nilable(String), default: nil
    const :id, String
    const :mobile_money, T.nilable(Inttegro::PaymentMethodMobileMoney), default: nil
    const :owner, T.nilable(Inttegro::PaymentMethodOwner), default: nil
    const :type, Inttegro::PaymentMethodType
    const :supplied, T.nilable(Inttegro::PaymentMethodSupplied), default: nil
    const :universal_fingerprint, T.nilable(String), default: nil
    const :verification, T.nilable(Inttegro::PaymentMethodVerification), default: nil
    const :verified_at, T.nilable(String), default: nil
  end

  class ActivatePaymentMethodResponse < T::Struct
    const :payment_method, T.nilable(Inttegro::PaymentMethod), default: nil
  end

  class AmountParams < T::Struct
    const :currency, Inttegro::Currency
    const :value, Integer
  end

  class AddProductPriceRequest < T::Struct
    const :product_id, String
    const :label, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :amount, Inttegro::AmountParams
  end

  class Amount < T::Struct
    const :currency, Inttegro::Currency
    const :value, Integer
  end

  class PurchaseIntentProductAttributesItem < T::Struct
    const :name, String
    const :value, String
  end

  class PurchaseIntentProductDimensions < T::Struct
    # This object intentionally has no fields.
  end

  class PurchaseIntentProductMedia < T::Struct
    # This object intentionally has no fields.
  end

  class PurchaseIntentProductShipment < T::Struct
    # This object intentionally has no fields.
  end

  class PriceEmbeddedProduct < T::Struct
    const :id, String
    const :about, T.nilable(String), default: nil
    const :active, T::Boolean
    const :archived_at, T.nilable(String), default: nil
    const :attributes, T.nilable(T::Array[Inttegro::PurchaseIntentProductAttributesItem]), default: nil
    const :category, T.nilable(String), default: nil
    const :created_at, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :description, T.nilable(String), default: nil
    const :dimensions, T.nilable(Inttegro::PurchaseIntentProductDimensions), default: nil
    const :media, T.nilable(Inttegro::PurchaseIntentProductMedia), default: nil
    const :name, String
    const :published_at, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :shipment, T.nilable(Inttegro::PurchaseIntentProductShipment), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :type, Inttegro::ProductType
    const :unit_dim, T.nilable(String), default: nil
    const :updated_at, T.nilable(String), default: nil
  end

  class CatalogPrice < T::Struct
    const :id, String
    const :label, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :active, T::Boolean
    const :nominal, Inttegro::Amount
    const :product_id, T.nilable(String), default: nil
    const :product, T.nilable(Inttegro::PriceEmbeddedProduct), default: nil
    const :created_at, String
    const :updated_at, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
  end

  class ErrorPayload < T::Struct
    const :message, T.nilable(String), default: nil
    const :fix_code, T.nilable(String), default: nil
    const :detail, T.nilable(String), default: nil
    const :cause, T.nilable(String), default: nil
    const :type, String
    const :code, String
    const :url, String
  end

  class AddProductPriceResponse < T::Struct
    const :price, T.nilable(Inttegro::CatalogPrice), default: nil
    const :error, T.nilable(Inttegro::ErrorPayload), default: nil
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

  class ApplicationSecretKey < T::Struct
    const :id, T.nilable(String), default: nil
    const :token_type, T.nilable(String), default: nil
    const :issued_at, T.nilable(String), default: nil
    const :token, T.nilable(String), default: nil
  end

  class ApplicationRelationshipPolicy < T::Struct
    const :child_standing, String
    const :management, Inttegro::AppManagementRole
    const :credentials, Inttegro::AppCredentialOwner
  end

  class ApplicationRelationship < T::Struct
    const :id, String
    const :kind, Inttegro::AppRelationshipKind
    const :policy_version, String
    const :status, Inttegro::AppRelationshipStatus
    const :actor_app_id, String
    const :creator_app_id, String
    const :placement_parent_app_id, String
    const :subject_app_id, String
    const :child_app_id, String
    const :child_standing, String
    const :relationship_policy, Inttegro::ApplicationRelationshipPolicy
    const :retained_creator_authority_exists, T::Boolean
    const :created_at, String
  end

  class Application < T::Struct
    const :id, String
    const :name, String
    const :alias, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :created_at, String
    const :secret_key, T.nilable(Inttegro::ApplicationSecretKey), default: nil
    const :relationship, T.nilable(Inttegro::ApplicationRelationship), default: nil
  end

  class ArchivePaymentMethodRequest < T::Struct
    const :payment_method_id, String
  end

  class ArchivePaymentMethodResponse < T::Struct
    const :payment_method, T.nilable(Inttegro::PaymentMethod), default: nil
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
    const :available, Inttegro::BalanceValue
    const :includes_transactions_before, String
    const :pending, Inttegro::BalanceValue
    const :refund, Inttegro::CurrencyBalanceSnapshotRefund
    const :reserved, Inttegro::CurrencyBalanceSnapshotReserved
  end

  class BalanceSnapshotBalances < T::Struct
    const :ghs, Inttegro::CurrencyBalanceSnapshot
  end

  class BalanceSnapshot < T::Struct
    const :balances, Inttegro::BalanceSnapshotBalances
  end

  class BalanceTransactionAmount < T::Struct
    const :currency, String
    const :value, Integer
  end

  class BalanceTransaction < T::Struct
    const :amount, Inttegro::BalanceTransactionAmount
    const :available_at, T.nilable(String), default: nil
    const :claimed_at, T.nilable(String), default: nil
    const :created_at, String
    const :id, String
    const :order_id, String
    const :paid_at, T.nilable(String), default: nil
    const :payment_id, T.nilable(String), default: nil
    const :payout_id, T.nilable(String), default: nil
    const :refund_id, T.nilable(String), default: nil
    const :type, Inttegro::BalanceTransactionType
  end

  class BalanceTransactionPage < T::Struct
    const :number, Integer
    const :size, Integer
    const :transactions, T.nilable(T::Array[Inttegro::BalanceTransaction]), default: nil
  end

  class BalanceTransactionPageResponse < T::Struct
    const :page, Inttegro::BalanceTransactionPage
  end

  class BalanceTransactionResponse < T::Struct
    const :transaction, Inttegro::BalanceTransaction
  end

  class BillingDetails < T::Struct
    const :name, String
    const :email_address, String
    const :phone_number, String
    const :address, T.nilable(Inttegro::Address), default: nil
  end

  class ChimeEmailMailbox < T::Struct
    const :name, T.nilable(String), default: nil
    const :address, T.nilable(String), default: nil
  end

  class ChimeEmailScannedLink < T::Struct
    const :raw, T.nilable(String), default: nil
    const :scheme, T.nilable(String), default: nil
    const :host, T.nilable(String), default: nil
    const :status, T.nilable(Inttegro::ContentSafetyStatus), default: nil
    const :reason, T.nilable(String), default: nil
  end

  class ChimeEmailSafetyResult < T::Struct
    const :status, T.nilable(Inttegro::ContentSafetyStatus), default: nil
    const :reason_codes, T.nilable(T::Array[String]), default: nil
    const :sanitized_html, T.nilable(String), default: nil
    const :normalized_text, T.nilable(String), default: nil
    const :links, T.nilable(T::Array[Inttegro::ChimeEmailScannedLink]), default: nil
    const :scanner, T.nilable(String), default: nil
    const :content_hash, T.nilable(String), default: nil
    const :quarantine_notes, T.nilable(String), default: nil
  end

  class ChimeEmailSchemaMarkup < T::Struct
    const :kind, T.nilable(Inttegro::ChimeEmailSchemaKind), default: nil
    const :json_ld, T.nilable(T::Hash[String, Object]), default: nil
  end

  class ChimeEmailMessage < T::Struct
    const :subject, T.nilable(String), default: nil
    const :text, T.nilable(String), default: nil
    const :html, T.nilable(String), default: nil
    const :from, T.nilable(Inttegro::ChimeEmailMailbox), default: nil
    const :reply_to, T.nilable(Inttegro::ChimeEmailMailbox), default: nil
    const :headers, T.nilable(T::Hash[String, String]), default: nil
    const :safety, T.nilable(Inttegro::ChimeEmailSafetyResult), default: nil
    const :schema, T.nilable(Inttegro::ChimeEmailSchemaMarkup), default: nil
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
    const :email, T.nilable(Inttegro::ChimeEmailMessage), default: nil
    const :errors, T.nilable(T::Array[Inttegro::BroadcastError]), default: nil
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
    const :broadcast, T.nilable(Inttegro::BroadcastCancelDetail), default: nil
  end

  class BroadcastCreationDetail < T::Struct
    const :content, String
    const :created_at, String
    const :customer_ids, T.nilable(T::Array[String]), default: nil
    const :email, T.nilable(Inttegro::ChimeEmailMessage), default: nil
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
    const :email, T.nilable(Inttegro::ChimeEmailMessage), default: nil
    const :errors, T.nilable(T::Array[Inttegro::BroadcastError]), default: nil
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
    # This object intentionally has no fields.
  end

  class MessageTemplateReference < T::Struct
    const :template_id, String
    const :variables, T.nilable(Inttegro::MessageTemplateVariables), default: nil
  end

  class ChimeEmailMessageInput < T::Struct
    const :subject, String
    const :text, String
    const :html, T.nilable(String), default: nil
    const :from, Inttegro::ChimeEmailMailbox
    const :reply_to, T.nilable(String), default: nil
    const :headers, T.nilable(T::Hash[String, String]), default: nil
  end

  class ChimeInlineRecipientVariant1Phone < T::Struct
    const :number, String
  end

  class ChimeInlineRecipientVariant1 < T::Struct
    const :name, T.nilable(String), default: nil
    const :phone, Inttegro::ChimeInlineRecipientVariant1Phone
    const :type, Inttegro::ChimeInlineRecipientVariant1Type
  end

  class ChimeInlineRecipientVariant2Email < T::Struct
    const :address, String
  end

  class ChimeInlineRecipientVariant2 < T::Struct
    const :email, Inttegro::ChimeInlineRecipientVariant2Email
    const :name, T.nilable(String), default: nil
    const :type, Inttegro::ChimeInlineRecipientVariant2Type
  end

  ChimeInlineRecipient = T.type_alias { T.any(Inttegro::ChimeInlineRecipientVariant1, Inttegro::ChimeInlineRecipientVariant2) }

  class ChimeSavedCustomerRecipient < T::Struct
    const :customer_id, String
    const :transport, Inttegro::ChimeTransport
  end

  ChimeRecipient = T.type_alias { T.any(Inttegro::ChimeInlineRecipient, Inttegro::ChimeSavedCustomerRecipient) }

  class BroadcastRequest < T::Struct
    const :request_meta, T.nilable(Inttegro::BroadcastRequestRequestMeta), default: nil
    const :message_template, T.nilable(T.any(String, Inttegro::MessageTemplateReference)), default: nil
    const :email, T.nilable(Inttegro::ChimeEmailMessageInput), default: nil
    const :purpose, T.nilable(String), default: nil
    const :recipients, T::Array[Inttegro::ChimeRecipient]
    const :sender, T.nilable(String), default: nil
  end

  class BroadcastResponse < T::Struct
    const :broadcast, T.nilable(Inttegro::BroadcastCreationDetail), default: nil
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

  class PayoutError < T::Struct
    const :cause, String
    const :message, String
    const :occurred_at, String
    const :type, String
  end

  class Payout < T::Struct
    const :amount, T.nilable(Inttegro::Amount), default: nil
    const :balance_transactions, T.nilable(T::Array[String]), default: nil
    const :canceled_at, T.nilable(String), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :destination_id, String
    const :error, T.nilable(Inttegro::PayoutError), default: nil
    const :execute_after, String
    const :executed_by, T.nilable(String), default: nil
    const :expected_at, T.nilable(String), default: nil
    const :failed_at, T.nilable(String), default: nil
    const :id, String
    const :initiated_at, String
    const :initiated_by, T.nilable(String), default: nil
    const :max_amount, Inttegro::Amount
    const :reference, T.nilable(String), default: nil
    const :schedule_id, T.nilable(String), default: nil
    const :scheduled_at, T.nilable(String), default: nil
    const :scheduled_by, T.nilable(String), default: nil
    const :sent_at, T.nilable(String), default: nil
    const :source_id, T.nilable(String), default: nil
    const :status, Inttegro::PayoutStatus
    const :succeeded_at, T.nilable(String), default: nil
  end

  class CancelPayoutResponse < T::Struct
    const :payout, T.nilable(Inttegro::Payout), default: nil
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
    const :request_meta, T.nilable(Inttegro::RefundRequestMeta), default: nil
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
    const :canceled_by, T.nilable(Inttegro::FileActorInput), default: nil
  end

  class CatalogPriceParams < T::Struct
    const :product_id, T.nilable(String), default: nil
    const :label, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :amount, Inttegro::AmountParams
  end

  class PriceParams < T::Struct
    const :currency, Inttegro::Currency
    const :value, Integer
  end

  class CatalogProductWithPriceData < T::Struct
    const :price, Inttegro::PriceParams
    const :product_id, String
    const :quantity, Integer
  end

  class CatalogProductWithPriceReference < T::Struct
    const :price_id, String
    const :product_id, String
    const :quantity, Integer
  end

  class CheckoutPaymentAddress < T::Struct
    const :name, T.nilable(String), default: nil
    const :phone_number, T.nilable(String), default: nil
    const :line1, T.nilable(String), default: nil
    const :line2, T.nilable(String), default: nil
    const :city, T.nilable(String), default: nil
    const :region, T.nilable(String), default: nil
    const :post_code, T.nilable(String), default: nil
    const :country, String
  end

  class CheckoutBillingDetails < T::Struct
    const :name, String
    const :phone_number, T.nilable(String), default: nil
    const :address, Inttegro::CheckoutPaymentAddress
  end

  class CheckoutConfirmPaymentRequest < T::Struct
    const :order_id, String
    const :payment_id, T.nilable(String), default: nil
    const :confirmation_id, T.nilable(String), default: nil
    const :token, String
  end

  class CheckoutInvoiceViewFormatWeb < T::Struct
    const :url, T.nilable(String), default: nil
  end

  class CheckoutInvoiceViewFormatPdf < T::Struct
    const :url, T.nilable(String), default: nil
  end

  class CheckoutInvoiceViewFormatReceipt < T::Struct
    const :url, T.nilable(String), default: nil
  end

  class CheckoutInvoiceViewFormat < T::Struct
    const :web, T.nilable(Inttegro::CheckoutInvoiceViewFormatWeb), default: nil
    const :pdf, T.nilable(Inttegro::CheckoutInvoiceViewFormatPdf), default: nil
    const :receipt, T.nilable(Inttegro::CheckoutInvoiceViewFormatReceipt), default: nil
  end

  class CheckoutInvoiceViewBeneficiary < T::Struct
    const :id, T.nilable(String), default: nil
    const :legal_entity_type, T.nilable(String), default: nil
    const :logo_url, T.nilable(String), default: nil
    const :alias, T.nilable(String), default: nil
    const :name, T.nilable(String), default: nil
    const :support_email, T.nilable(String), default: nil
    const :support_phone, T.nilable(String), default: nil
    const :website_url, T.nilable(String), default: nil
    const :accent_color, T.nilable(String), default: nil
    const :invoice_support_line, T.nilable(String), default: nil
    const :invoice_footer, T.nilable(String), default: nil
  end

  class CheckoutInvoiceView < T::Struct
    const :id, String
    const :application_id, T.nilable(String), default: nil
    const :number, T.nilable(String), default: nil
    const :status, T.nilable(Inttegro::CheckoutInvoiceViewStatus), default: nil
    const :created_at, String
    const :due_at, T.nilable(String), default: nil
    const :format_value, Inttegro::CheckoutInvoiceViewFormat, name: "format"
    const :beneficiary, T.nilable(Inttegro::CheckoutInvoiceViewBeneficiary), default: nil
  end

  class CheckoutMobileMoneyData < T::Struct
    const :reference, T.nilable(String), default: nil
    const :network, Inttegro::CheckoutMobileMoneyDataNetwork
    const :account_number, String
  end

  class CheckoutOrderCheckoutSettings < T::Struct
    const :redirect_url, T.nilable(String), default: nil
    const :cancel_url, T.nilable(String), default: nil
  end

  class InlineProductDetails < T::Struct
    const :about, T.nilable(String), default: nil
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :name, String
    const :price, Inttegro::PriceParams
    const :quantity, Integer
    const :reference, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :type, Inttegro::ProductType
  end

  ProductDetails = T.type_alias { T.any(Inttegro::InlineProductDetails, Inttegro::CatalogProductWithPriceData, Inttegro::CatalogProductWithPriceReference) }

  class ProductLineItem < T::Struct
    const :type, Inttegro::ProductLineItemType
    const :product, Inttegro::ProductDetails
  end

  class FeeDetails < T::Struct
    const :id, T.nilable(String), default: nil
    const :label, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :amount, Inttegro::AmountParams
  end

  class FeeLineItem < T::Struct
    const :type, Inttegro::FeeLineItemType
    const :fee, Inttegro::FeeDetails
  end

  class ShippingDetails < T::Struct
    const :id, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :fee, Inttegro::AmountParams
  end

  class ShippingLineItem < T::Struct
    const :type, Inttegro::ShippingLineItemType
    const :shipping, Inttegro::ShippingDetails
  end

  LineItem = T.type_alias { T.any(Inttegro::ProductLineItem, Inttegro::FeeLineItem, Inttegro::ShippingLineItem) }

  class CheckoutOrderLineItemGroup < T::Struct
    const :line_items, T.nilable(T::Array[Inttegro::LineItem]), default: nil
    const :total, T.nilable(Inttegro::Amount), default: nil
  end

  class CheckoutOrderCustomerBillingAddress < T::Struct
    # This object intentionally has no fields.
  end

  class CheckoutOrderCustomerShippingAddress < T::Struct
    # This object intentionally has no fields.
  end

  class CheckoutOrderCustomer < T::Struct
    const :id, T.nilable(String), default: nil
    const :guest, T.nilable(T::Boolean), default: nil
    const :name, T.nilable(String), default: nil
    const :email_address, T.nilable(String), default: nil
    const :phone_number, T.nilable(String), default: nil
    const :billing_address, T.nilable(Inttegro::CheckoutOrderCustomerBillingAddress), default: nil
    const :shipping_address, T.nilable(Inttegro::CheckoutOrderCustomerShippingAddress), default: nil
  end

  class CheckoutOrderCreatedFrom < T::Struct
    const :source, T.nilable(String), default: nil
    const :resource_type, T.nilable(String), default: nil
    const :resource_id, T.nilable(String), default: nil
  end

  class CheckoutOrderPaymentPaymentMethod < T::Struct
    # This object intentionally has no fields.
  end

  class CheckoutOrderPaymentBillingDetails < T::Struct
    # This object intentionally has no fields.
  end

  class CheckoutOrderPaymentLatestAttempt < T::Struct
    # This object intentionally has no fields.
  end

  class CheckoutOrderPaymentNextAction < T::Struct
    # This object intentionally has no fields.
  end

  class CheckoutOrderPaymentLatestError < T::Struct
    # This object intentionally has no fields.
  end

  class CheckoutOrderPayment < T::Struct
    const :id, T.nilable(String), default: nil
    const :statement_descriptor, T.nilable(String), default: nil
    const :payment_method_types, T.nilable(T::Array[String]), default: nil
    const :payment_method, T.nilable(Inttegro::CheckoutOrderPaymentPaymentMethod), default: nil
    const :billing_details, T.nilable(Inttegro::CheckoutOrderPaymentBillingDetails), default: nil
    const :receipt, T.nilable(Inttegro::CheckoutInvoiceView), default: nil
    const :latest_attempt, T.nilable(Inttegro::CheckoutOrderPaymentLatestAttempt), default: nil
    const :amount, T.nilable(Inttegro::Amount), default: nil
    const :next_action, T.nilable(Inttegro::CheckoutOrderPaymentNextAction), default: nil
    const :latest_error, T.nilable(Inttegro::CheckoutOrderPaymentLatestError), default: nil
    const :status, T.nilable(String), default: nil
    const :initiated_at, T.nilable(String), default: nil
    const :executed_at, T.nilable(String), default: nil
    const :due_at, T.nilable(String), default: nil
    const :canceled_at, T.nilable(String), default: nil
    const :expired_at, T.nilable(String), default: nil
    const :paid_at, T.nilable(String), default: nil
    const :paid_offline, T.nilable(T::Boolean), default: nil
    const :failed_at, T.nilable(String), default: nil
  end

  class CheckoutOrder < T::Struct
    const :id, String
    const :number, T.nilable(String), default: nil
    const :receipt_number, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :status, Inttegro::CheckoutOrderStatus
    const :initiated_at, String
    const :sealed_at, T.nilable(String), default: nil
    const :completed_at, T.nilable(String), default: nil
    const :paid_at, T.nilable(String), default: nil
    const :canceled_at, T.nilable(String), default: nil
    const :expires_at, T.nilable(String), default: nil
    const :payment_due_at, T.nilable(String), default: nil
    const :checkout_settings, T.nilable(Inttegro::CheckoutOrderCheckoutSettings), default: nil
    const :line_item_group, T.nilable(Inttegro::CheckoutOrderLineItemGroup), default: nil
    const :customer, Inttegro::CheckoutOrderCustomer
    const :created_from, T.nilable(Inttegro::CheckoutOrderCreatedFrom), default: nil
    const :payment, T.nilable(Inttegro::CheckoutOrderPayment), default: nil
    const :invoice, T.nilable(Inttegro::CheckoutInvoiceView), default: nil
  end

  class CheckoutOrderReferenceRequest < T::Struct
    const :order_id, String
  end

  class CheckoutOrderResponse < T::Struct
    const :order, T.nilable(Inttegro::CheckoutOrder), default: nil
    const :error, T.nilable(Inttegro::ErrorPayload), default: nil
  end

  class CheckoutPaymentMethodDataBillingDetails < T::Struct
    const :name, String
    const :phone_number, T.nilable(String), default: nil
    const :address, Inttegro::CheckoutPaymentAddress
  end

  class CheckoutPayRequestPaymentMethodData < T::Struct
    const :type, Inttegro::CheckoutPayRequestPaymentMethodDataType
    const :mobile_money, Inttegro::CheckoutMobileMoneyData
    const :billing_details, T.nilable(Inttegro::CheckoutPaymentMethodDataBillingDetails), default: nil
  end

  class CheckoutPayRequest < T::Struct
    const :order_id, String
    const :payment_method_id, T.nilable(String), default: nil
    const :payment_method_data, T.nilable(Inttegro::CheckoutPayRequestPaymentMethodData), default: nil
    const :save_payment_method, T.nilable(T::Boolean), default: nil
  end

  class CheckoutPaymentMethodData < T::Struct
    const :type, Inttegro::CheckoutPaymentMethodDataType
    const :mobile_money, Inttegro::CheckoutMobileMoneyData
    const :billing_details, T.nilable(Inttegro::CheckoutPaymentMethodDataBillingDetails), default: nil
  end

  class ChimeRecipientDetailPhone < T::Struct
    const :number, String
  end

  class ChimeRecipientDetailEmail < T::Struct
    const :address, String
  end

  class ChimeRecipientDetail < T::Struct
    const :type, Inttegro::ChimeRecipientType
    const :name, T.nilable(String), default: nil
    const :phone, T.nilable(Inttegro::ChimeRecipientDetailPhone), default: nil
    const :email, T.nilable(Inttegro::ChimeRecipientDetailEmail), default: nil
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
    const :email_events, T.nilable(T::Array[Inttegro::ChimeEmailEvent]), default: nil
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
    const :mechanism, Inttegro::ChimeTransport
    const :sent_at, T.nilable(String), default: nil
    const :sent_via, T.nilable(Inttegro::ChimeTransport), default: nil
    const :status, String
    const :suppressed_at, T.nilable(String), default: nil
    const :suppression_reason, T.nilable(String), default: nil
  end

  class Chime < T::Struct
    const :created_at, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :customer_id, T.nilable(String), default: nil
    const :email, T.nilable(Inttegro::ChimeEmailMessage), default: nil
    const :full_message, String
    const :id, String
    const :idempotency_key, T.nilable(String), default: nil
    const :purpose, T.nilable(String), default: nil
    const :recipient, Inttegro::ChimeRecipientDetail
    const :sender_id, String
    const :transmission, T.nilable(Inttegro::ChimeTransmission), default: nil
  end

  class ChimePage < T::Struct
    const :number, Integer
    const :size, Integer
    const :chimes, T::Array[Inttegro::Chime]
  end

  class ChimeResponse < T::Struct
    const :chime, T.nilable(Inttegro::Chime), default: nil
  end

  class CompactFinancialAccount < T::Struct
    const :created_at, String
    const :currency, String
    const :description, T.nilable(String), default: nil
    const :disconnected_at, T.nilable(String), default: nil
    const :id, String
    const :label, T.nilable(String), default: nil
    const :type, Inttegro::FinancialAccountType
  end

  class OrderCheckoutSettings < T::Struct
    const :redirect_url, T.nilable(String), default: nil
    const :cancel_url, T.nilable(String), default: nil
  end

  class OrderCreatedFrom < T::Struct
    const :source, T.nilable(String), default: nil
    const :resource_type, T.nilable(Inttegro::OrderCreatedFromResourceType), default: nil
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
    const :billing_address, T.nilable(Inttegro::OrderAddress), default: nil
    const :shipping_address, T.nilable(Inttegro::OrderAddress), default: nil
  end

  class OrderDocumentFormat < T::Struct
    const :url, String
  end

  class OrderInvoiceFormat < T::Struct
    const :web, Inttegro::OrderDocumentFormat
    const :pdf, Inttegro::OrderDocumentFormat
    const :receipt, T.nilable(Inttegro::OrderDocumentFormat), default: nil
  end

  class OrderInvoice < T::Struct
    const :number, T.nilable(String), default: nil
    const :format_value, T.nilable(Inttegro::OrderInvoiceFormat), default: nil, name: "format"
  end

  class RefundLineItem < T::Struct
    const :id, String
    const :order_line_item_id, String
    const :original_amount_paid, Inttegro::Amount
    const :reason, T.nilable(Inttegro::RefundReason), default: nil
    const :reason_details, T.nilable(String), default: nil
    const :refund_amount, Inttegro::Amount
  end

  class Refund < T::Struct
    const :canceled_at, T.nilable(String), default: nil
    const :created_at, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :failed_at, T.nilable(String), default: nil
    const :id, String
    const :line_items, T::Array[Inttegro::RefundLineItem]
    const :order_id, String
    const :processing_at, T.nilable(String), default: nil
    const :reason, Inttegro::RefundReason
    const :reason_details, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :status, Inttegro::RefundStatus
    const :succeeded_at, T.nilable(String), default: nil
    const :total, Inttegro::Amount
  end

  class InvoiceSettings < T::Struct
    const :number, T.nilable(String), default: nil
    const :memo, T.nilable(String), default: nil
    const :footer, T.nilable(String), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
  end

  class Price < T::Struct
    const :currency, Inttegro::Currency
    const :value, Integer
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
    const :price, Inttegro::Price
    const :quantity, Integer
  end

  class OrderProductLineItem < T::Struct
    const :type, Inttegro::OrderProductLineItemType
    const :product, Inttegro::OrderProductLineItemProduct
  end

  class OrderFeeLineItemFee < T::Struct
    const :id, String
    const :description, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :amount, Inttegro::Amount
    const :label, String
  end

  class OrderFeeLineItem < T::Struct
    const :type, Inttegro::OrderFeeLineItemType
    const :fee, Inttegro::OrderFeeLineItemFee
  end

  class OrderShippingLineItemShipping < T::Struct
    const :id, String
    const :tax_code, T.nilable(String), default: nil
    const :label, T.nilable(String), default: nil
    const :fee, Inttegro::Amount
  end

  class OrderShippingLineItem < T::Struct
    const :type, Inttegro::OrderShippingLineItemType
    const :shipping, Inttegro::OrderShippingLineItemShipping
  end

  OrderLineItem = T.type_alias { T.any(Inttegro::OrderProductLineItem, Inttegro::OrderFeeLineItem, Inttegro::OrderShippingLineItem) }

  class OrderLineItemGroup < T::Struct
    const :line_items, T::Array[Inttegro::OrderLineItem]
    const :total, Inttegro::Amount
  end

  class PaymentMethodSnapshotBankAccountGhanaBankAccount < T::Struct
    const :account_number, String
    const :branch, T.nilable(String), default: nil
    const :name, T.nilable(String), default: nil
    const :sort_code, T.nilable(String), default: nil
    const :swift_code, T.nilable(String), default: nil
  end

  class PaymentMethodSnapshotBankAccount < T::Struct
    const :type, String
    const :ghana_bank_account, T.nilable(Inttegro::PaymentMethodSnapshotBankAccountGhanaBankAccount), default: nil
  end

  class PaymentMethodSnapshotCard < T::Struct
    # This object intentionally has no fields.
  end

  class PaymentMethodSnapshotMobileMoney < T::Struct
    const :network, Inttegro::MobileMoneyNetwork
    const :account_number, String
    const :last4, String
  end

  class PaymentMethodSnapshotOwner < T::Struct
    const :name, String
    const :address, T.nilable(Inttegro::OrderAddress), default: nil
  end

  class PaymentMethodSnapshot < T::Struct
    const :id, String
    const :bank_account, T.nilable(Inttegro::PaymentMethodSnapshotBankAccount), default: nil
    const :card, T.nilable(Inttegro::PaymentMethodSnapshotCard), default: nil
    const :created_at, String
    const :customer_id, String
    const :mobile_money, T.nilable(Inttegro::PaymentMethodSnapshotMobileMoney), default: nil
    const :owner, T.nilable(Inttegro::PaymentMethodSnapshotOwner), default: nil
    const :type, Inttegro::PaymentMethodType
    const :verified, T::Boolean
    const :verified_at, T.nilable(String), default: nil
  end

  class PaymentLatestAttempt < T::Struct
    const :payment_method_type, T.nilable(String), default: nil
    const :payment_method_id, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :status, T.nilable(Inttegro::PaymentAttemptStatus), default: nil
    const :initiated_at, T.nilable(String), default: nil
    const :succeeded_at, T.nilable(String), default: nil
  end

  class PaymentNextActionConfirmPaymentRequest < T::Struct
    const :id, T.nilable(String), default: nil
    const :recipient, T.nilable(String), default: nil
    const :sent_via, T.nilable(Inttegro::PaymentConfirmationChannel), default: nil
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
    const :request, T.nilable(Inttegro::PaymentNextActionConfirmPaymentRequest), default: nil
    const :attempt, T.nilable(Inttegro::PaymentNextActionConfirmPaymentAttempt), default: nil
    const :confirmed, T.nilable(T::Boolean), default: nil
    const :status, T.nilable(String), default: nil
  end

  class PaymentNextActionExecute < T::Struct
    # This object intentionally has no fields.
  end

  class PaymentNextActionRedirectLatestVisit < T::Struct
    const :user_agent, T.nilable(String), default: nil
    const :ip_address, T.nilable(String), default: nil
    const :at, T.nilable(String), default: nil
  end

  class PaymentNextActionRedirect < T::Struct
    const :redirect_url, T.nilable(String), default: nil
    const :valid_until, T.nilable(String), default: nil
    const :latest_visit, T.nilable(Inttegro::PaymentNextActionRedirectLatestVisit), default: nil
  end

  class PaymentNextActionAuthorize < T::Struct
    const :beneficiary, T.nilable(String), default: nil
    const :scheme, T.nilable(String), default: nil
    const :expires_at, T.nilable(String), default: nil
  end

  class PaymentNextAction < T::Struct
    const :type, Inttegro::PaymentNextActionType
    const :confirm_payment, T.nilable(Inttegro::PaymentNextActionConfirmPayment), default: nil
    const :execute, T.nilable(Inttegro::PaymentNextActionExecute), default: nil
    const :redirect, T.nilable(Inttegro::PaymentNextActionRedirect), default: nil
    const :authorize, T.nilable(Inttegro::PaymentNextActionAuthorize), default: nil
  end

  class PaymentPayoutConfigurationDestination < T::Struct
    const :financial_account_id, T.nilable(String), default: nil
  end

  class PaymentPayoutConfiguration < T::Struct
    const :enable_fx, T.nilable(T::Boolean), default: nil
    const :destination, T.nilable(Inttegro::PaymentPayoutConfigurationDestination), default: nil
  end

  class Payment < T::Struct
    const :id, String
    const :status, Inttegro::PaymentStatus
    const :statement_descriptor, String
    const :amount, Inttegro::Amount
    const :balance_transaction, T.nilable(Inttegro::BalanceTransaction), default: nil
    const :payment_method, T.nilable(Inttegro::PaymentMethodSnapshot), default: nil
    const :latest_attempt, T.nilable(Inttegro::PaymentLatestAttempt), default: nil
    const :next_action, T.nilable(Inttegro::PaymentNextAction), default: nil
    const :initiated_at, String
    const :executed_at, T.nilable(String), default: nil
    const :paid_at, T.nilable(String), default: nil
    const :canceled_at, T.nilable(String), default: nil
    const :due_at, T.nilable(String), default: nil
    const :expired_at, T.nilable(String), default: nil
    const :failed_at, T.nilable(String), default: nil
    const :paid_offline, T.nilable(T::Boolean), default: nil
    const :payment_method_types, T.nilable(T::Array[String]), default: nil
    const :payout_configuration, T.nilable(Inttegro::PaymentPayoutConfiguration), default: nil
  end

  class OrderPayoutSettings < T::Struct
    # This object intentionally has no fields.
  end

  class OrderShipping < T::Struct
    # This object intentionally has no fields.
  end

  class Order < T::Struct
    const :canceled_at, T.nilable(String), default: nil
    const :checkout_settings, T.nilable(Inttegro::OrderCheckoutSettings), default: nil
    const :completed_at, T.nilable(String), default: nil
    const :created_from, T.nilable(Inttegro::OrderCreatedFrom), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :customer, Inttegro::OrderCustomer
    const :expires_at, T.nilable(String), default: nil
    const :id, String
    const :initiated_at, String
    const :invoice, T.nilable(Inttegro::OrderInvoice), default: nil
    const :number, T.nilable(String), default: nil
    const :receipt_number, T.nilable(String), default: nil
    const :refunds, T.nilable(T::Array[Inttegro::Refund]), default: nil
    const :invoice_settings, T.nilable(Inttegro::InvoiceSettings), default: nil
    const :status, Inttegro::OrderStatus
    const :sealed_at, T.nilable(String), default: nil
    const :line_item_group, T.nilable(Inttegro::OrderLineItemGroup), default: nil
    const :payment, T.nilable(Inttegro::Payment), default: nil
    const :paid_at, T.nilable(String), default: nil
    const :payment_due_at, T.nilable(String), default: nil
    const :payout_settings, T.nilable(Inttegro::OrderPayoutSettings), default: nil
    const :reference, T.nilable(String), default: nil
    const :shipping, T.nilable(Inttegro::OrderShipping), default: nil
  end

  class CompleteOrderEnvelope < T::Struct
    const :order, T.nilable(Inttegro::Order), default: nil
  end

  class CompleteOrderRequest < T::Struct
    const :order_id, String
    const :paid_out_of_band, T.nilable(T::Boolean), default: nil
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
    const :branch, T.nilable(Inttegro::FinancialInstitutionBankBranch), default: nil
    const :code_scheme, String
    const :sort_code_prefix, T.nilable(String), default: nil
    const :swift_code, T.nilable(String), default: nil
  end

  class FinancialInstitutionMobileMoneyProvider < T::Struct
    const :provider, String
  end

  class FinancialInstitution < T::Struct
    const :bank, T.nilable(Inttegro::FinancialInstitutionBank), default: nil
    const :country, String
    const :id, String
    const :mobile_money_provider, T.nilable(Inttegro::FinancialInstitutionMobileMoneyProvider), default: nil
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
    const :mandate, Inttegro::FinancialAccountPullConfigurationMandate
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

  class FinancialAccountDetailsVerification < T::Struct
    # This object intentionally has no fields.
  end

  class FinancialAccountAddress < T::Struct
    const :city, String
    const :country, String
    const :line_1, String
    const :line_2, T.nilable(String), default: nil
    const :name, T.nilable(String), default: nil
    const :phone, T.nilable(String), default: nil
    const :post_code, T.nilable(String), default: nil
    const :region, String
  end

  class FinancialAccountOwner < T::Struct
    const :address, Inttegro::FinancialAccountAddress
    const :name, String
  end

  class GhanaBankAccount < T::Struct
    const :branch, T.nilable(String), default: nil
    const :holder, Inttegro::FinancialAccountOwner
    const :name, T.nilable(String), default: nil
    const :number, String
    const :sort_code, T.nilable(String), default: nil
    const :swift_code, T.nilable(String), default: nil
  end

  class FinancialAccountBank < T::Struct
    const :type, Inttegro::BankAccountType
    const :ghana_bank_account, T.nilable(Inttegro::GhanaBankAccount), default: nil
  end

  class ConnectedFinancialAccountDoshAccount < T::Struct
    # This object intentionally has no fields.
  end

  class FinancialAccountWalletMobileMoney < T::Struct
    const :account_number, String
    const :network, Inttegro::MobileMoneyNetwork
  end

  class FinancialAccountWallet < T::Struct
    const :id, String
    const :type, Inttegro::WalletType
    const :mobile_money, T.nilable(Inttegro::FinancialAccountWalletMobileMoney), default: nil
  end

  class ConnectedFinancialAccount < T::Struct
    const :app_customer_local_fingerprint, T.nilable(String), default: nil
    const :app_local_fingerprint, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
    const :created_at, String
    const :currency, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :description, T.nilable(String), default: nil
    const :id, String
    const :institution, T.nilable(Inttegro::FinancialInstitution), default: nil
    const :label, T.nilable(String), default: nil
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountPullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountPushConfiguration), default: nil
    const :reference, T.nilable(String), default: nil
    const :supplied, T.nilable(Inttegro::ResourceSupply), default: nil
    const :type, Inttegro::FinancialAccountType
    const :universal_fingerprint, T.nilable(String), default: nil
    const :verification, T.nilable(Inttegro::FinancialAccountDetailsVerification), default: nil
    const :bank_account, T.nilable(Inttegro::FinancialAccountBank), default: nil
    const :dosh_account, T.nilable(Inttegro::ConnectedFinancialAccountDoshAccount), default: nil
    const :owner, T.nilable(Inttegro::FinancialAccountOwner), default: nil
    const :wallet, T.nilable(Inttegro::FinancialAccountWallet), default: nil
  end

  class ConnectFinancialAccountResponse < T::Struct
    const :account, T.nilable(Inttegro::ConnectedFinancialAccount), default: nil
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
    const :branches, T::Array[Inttegro::CountryBankBranch]
  end

  class CountryBankDirectory < T::Struct
    const :bank_account_type, String
    const :code_scheme, String
    const :items, T::Array[Inttegro::CountryBank]
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
    const :banks, T.nilable(Inttegro::CountryBankDirectory), default: nil
  end

  class CountrySpecifications < T::Struct
    const :countries, T::Hash[String, Inttegro::CountrySpecification]
  end

  class CreateApplicationRequestRelationshipPolicy < T::Struct
    const :child_standing, T.nilable(String), default: nil
    const :management, T.nilable(Inttegro::AppManagementRole), default: nil
    const :credentials, T.nilable(Inttegro::AppCredentialOwner), default: nil
  end

  class CreateApplicationRequest < T::Struct
    const :name, String
    const :alias, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :legal_entity_type, T.nilable(String), default: nil
    const :placement_parent_application_id, T.nilable(String), default: nil
    const :relationship_policy, T.nilable(Inttegro::CreateApplicationRequestRelationshipPolicy), default: nil
  end

  class CreateApplicationResponse < T::Struct
    const :app, Inttegro::Application
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
    const :billing_address, T.nilable(Inttegro::CustomerAddressInput), default: nil
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :email_address, T.nilable(String), default: nil
    const :name, String
    const :phone_number, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :shipping_address, T.nilable(Inttegro::CustomerAddressInput), default: nil
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
    const :from, T.nilable(Inttegro::MessageTemplateMailbox), default: nil
    const :reply_to, T.nilable(Inttegro::MessageTemplateMailbox), default: nil
    const :headers, T.nilable(T::Hash[String, String]), default: nil
  end

  class MessageTemplateVariableItemInput < T::Struct
    const :about, T.nilable(String), default: nil
    const :default, T.nilable(Object), default: nil
    const :name, String
    const :required, T.nilable(T::Boolean), default: nil
    const :type, Inttegro::MessageTemplateVariableItemType
  end

  class MessageTemplateVariableInput < T::Struct
    const :name, String
    const :type, Inttegro::MessageTemplateVariableType
    const :required, T.nilable(T::Boolean), default: nil
    const :default, T.nilable(Object), default: nil
    const :about, T.nilable(String), default: nil
    const :items, T.nilable(T::Array[Inttegro::MessageTemplateVariableItemInput]), default: nil
  end

  class CreateEmailMessageTemplateRequest < T::Struct
    const :about, T.nilable(String), default: nil
    const :attachments, T.nilable(Inttegro::MessageTemplateAttachmentIDs), default: nil
    const :channel, Inttegro::CreateEmailMessageTemplateRequestChannel
    const :email, Inttegro::MessageTemplateEmailContent
    const :locale, T.nilable(String), default: nil
    const :name, String
    const :purpose, String
    const :variables, T.nilable(T::Array[Inttegro::MessageTemplateVariableInput]), default: nil
  end

  class FileLinkDelivery < T::Struct
    const :mode, T.nilable(Inttegro::FileLinkDeliveryMode), default: nil
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
    const :delivery, T.nilable(Inttegro::FileLinkDelivery), default: nil
    const :access, T.nilable(Inttegro::FileLinkAccessRequest), default: nil
    const :created_by, T.nilable(Inttegro::FileActorInput), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :expires_at, T.nilable(String), default: nil
  end

  class CreateFileRequest < T::Struct
    const :file, String
    const :purpose, String
    const :title, T.nilable(String), default: nil
    const :custom_data, T.nilable(String), default: nil
  end

  class CreatedFinancialAccountAddress < T::Struct
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

  class CreatedFinancialAccountOwner < T::Struct
    const :address, Inttegro::CreatedFinancialAccountAddress
    const :name, String
  end

  class CreatedGhanaBankAccount < T::Struct
    const :branch, T.nilable(String), default: nil
    const :holder, Inttegro::CreatedFinancialAccountOwner
    const :name, String
    const :number, String
    const :sort_code, T.nilable(String), default: nil
    const :swift_code, T.nilable(String), default: nil
  end

  class CreatedFinancialAccountBank < T::Struct
    const :id, String
    const :type, Inttegro::BankAccountType
    const :ghana_bank_account, T.nilable(Inttegro::CreatedGhanaBankAccount), default: nil
  end

  class CreatedFinancialAccount < T::Struct
    const :app_customer_local_fingerprint, T.nilable(String), default: nil
    const :app_local_fingerprint, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
    const :created_at, String
    const :currency, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :description, T.nilable(String), default: nil
    const :id, String
    const :institution, T.nilable(Inttegro::FinancialInstitution), default: nil
    const :label, T.nilable(String), default: nil
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountPullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountPushConfiguration), default: nil
    const :reference, T.nilable(String), default: nil
    const :supplied, T.nilable(Inttegro::ResourceSupply), default: nil
    const :type, Inttegro::FinancialAccountType
    const :universal_fingerprint, T.nilable(String), default: nil
    const :verification, T.nilable(Inttegro::FinancialAccountDetailsVerification), default: nil
    const :bank_account, T.nilable(Inttegro::CreatedFinancialAccountBank), default: nil
    const :owner, T.nilable(Inttegro::CreatedFinancialAccountOwner), default: nil
    const :wallet, T.nilable(Inttegro::FinancialAccountWallet), default: nil
  end

  class CreateFinancialAccountResponse < T::Struct
    const :account, T.nilable(Inttegro::CreatedFinancialAccount), default: nil
  end

  class MessageTemplateSMSContent < T::Struct
    const :message_template, String
  end

  class CreateSMSMessageTemplateRequest < T::Struct
    const :about, T.nilable(String), default: nil
    const :channel, Inttegro::CreateSMSMessageTemplateRequestChannel
    const :locale, T.nilable(String), default: nil
    const :name, String
    const :purpose, String
    const :sms, Inttegro::MessageTemplateSMSContent
    const :variables, T.nilable(T::Array[Inttegro::MessageTemplateVariableInput]), default: nil
  end

  CreateMessageTemplateRequest = T.type_alias { T.any(Inttegro::CreateSMSMessageTemplateRequest, Inttegro::CreateEmailMessageTemplateRequest) }

  class PaymentMethodDataMobileMoney < T::Struct
    const :network, Inttegro::MobileMoneyNetwork
    const :account_number, String
  end

  class PaymentMethodData < T::Struct
    const :type, Inttegro::PaymentMethodDataType
    const :mobile_money, T.nilable(Inttegro::PaymentMethodDataMobileMoney), default: nil
  end

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
    const :destination, T.nilable(Inttegro::OrderPayoutSettingsRequestDestination), default: nil
    const :enable_fx, T.nilable(T::Boolean), default: nil
  end

  class Shipping < T::Struct
    const :address, Inttegro::Address
  end

  class CreateOrderExistingCustomer < T::Struct
    const :customer_id, String
    const :payment_method_id, T.nilable(String), default: nil
    const :payment_method_data, T.nilable(Inttegro::PaymentMethodData), default: nil
    const :receipt_number, T.nilable(String), default: nil
    const :statement_descriptor, T.nilable(String), default: nil
    const :statement_descriptor_prefix, T.nilable(String), default: nil
    const :execute_payment, T.nilable(T::Boolean), default: nil
    const :finalize, T.nilable(T::Boolean), default: nil
    const :request_meta, T.nilable(Inttegro::CreateOrderExistingCustomerRequestMeta), default: nil
    const :checkout_settings, T.nilable(Inttegro::CreateOrderExistingCustomerCheckoutSettings), default: nil
    const :invoice_settings, T.nilable(Inttegro::InvoiceSettings), default: nil
    const :payout_settings, T.nilable(Inttegro::OrderPayoutSettingsRequest), default: nil
    const :line_items, T::Array[Inttegro::LineItem]
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :billing_details, T.nilable(Inttegro::BillingDetails), default: nil
    const :shipping, T.nilable(Inttegro::Shipping), default: nil
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
    const :customer_data, Inttegro::CustomerData
    const :payment_method_data, T.nilable(Inttegro::PaymentMethodData), default: nil
    const :number, T.nilable(String), default: nil
    const :receipt_number, T.nilable(String), default: nil
    const :statement_descriptor, T.nilable(String), default: nil
    const :statement_descriptor_prefix, T.nilable(String), default: nil
    const :execute_payment, T.nilable(T::Boolean), default: nil
    const :finalize, T.nilable(T::Boolean), default: nil
    const :request_meta, T.nilable(Inttegro::CreateOrderNewCustomerRequestMeta), default: nil
    const :checkout_settings, T.nilable(Inttegro::CreateOrderNewCustomerCheckoutSettings), default: nil
    const :invoice_settings, T.nilable(Inttegro::InvoiceSettings), default: nil
    const :payout_settings, T.nilable(Inttegro::OrderPayoutSettingsRequest), default: nil
    const :line_items, T::Array[Inttegro::LineItem]
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :billing_details, T.nilable(Inttegro::BillingDetails), default: nil
    const :shipping, T.nilable(Inttegro::Shipping), default: nil
  end

  class ProductShipmentInput < T::Struct
    const :type, Inttegro::ProductShipmentInputType
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
    const :physical, T.nilable(Inttegro::ProductDimensionsPhysical), default: nil
    const :digital, T.nilable(Inttegro::ProductDimensionsDigital), default: nil
    const :custom, T.nilable(Inttegro::ProductDimensionsCustom), default: nil
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
    const :type, Inttegro::ProductType
    const :reference, T.nilable(String), default: nil
    const :name, String
    const :description, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :category, T.nilable(String), default: nil
    const :shipment, T.nilable(Inttegro::ProductShipmentInput), default: nil
    const :dimensions, T.nilable(Inttegro::ProductDimensions), default: nil
    const :unit_dimension, T.nilable(String), default: nil
    const :media, T.nilable(Inttegro::ProductMedia), default: nil
    const :attributes, T.nilable(T::Array[Inttegro::ProductAttribute]), default: nil
    const :publish, T.nilable(T::Boolean), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
  end

  class CreatePurchaseIntentRequestProduct < T::Struct
    const :id, String
    const :variant_set_id, T.nilable(String), default: nil
  end

  class CreatePurchaseIntentRequestPriceOriginal < T::Struct
    const :id, T.nilable(String), default: nil
    const :nominal, T.nilable(Inttegro::PriceParams), default: nil
  end

  class CreatePurchaseIntentRequestPrice < T::Struct
    const :id, T.nilable(String), default: nil
    const :nominal, T.nilable(Inttegro::PriceParams), default: nil
    const :original, T.nilable(Inttegro::CreatePurchaseIntentRequestPriceOriginal), default: nil
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
    const :product, T.nilable(Inttegro::CreatePurchaseIntentRequestProduct), default: nil
    const :product_id, T.nilable(String), default: nil
    const :price, T.nilable(Inttegro::CreatePurchaseIntentRequestPrice), default: nil
    const :price_id, T.nilable(String), default: nil
    const :quantity, Inttegro::CreatePurchaseIntentRequestQuantity
    const :usage, T.nilable(Inttegro::CreatePurchaseIntentRequestUsage), default: nil
    const :expires_at, T.nilable(String), default: nil
  end

  class CreateRefundLineItem < T::Struct
    const :order_line_item_id, String
    const :reason, T.nilable(Inttegro::RefundReason), default: nil
    const :reason_details, T.nilable(String), default: nil
    const :refund_amount, Inttegro::AmountParams
  end

  class CreateRefundRequest < T::Struct
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :line_items, T::Array[Inttegro::CreateRefundLineItem]
    const :order_id, String
    const :reason, Inttegro::RefundReason
    const :reason_details, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :request_meta, T.nilable(Inttegro::RefundRequestMeta), default: nil
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
    const :constraints, T.nilable(Inttegro::UploadRequestConstraints), default: nil
    const :display_data, T.nilable(Inttegro::UploadRequestDisplay), default: nil, name: "display"
    const :subject, T.nilable(Inttegro::FileParty), default: nil
    const :recipient, T.nilable(Inttegro::FileParty), default: nil
    const :resource, T.nilable(Inttegro::FileResource), default: nil
    const :requester, T.nilable(Inttegro::FileActorInput), default: nil
    const :attempts, T.nilable(Inttegro::UploadRequestAttemptsRequest), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :expires_at, T.nilable(String), default: nil
  end

  class CustomerBalanceValue < T::Struct
    const :as_of, String
    const :available, Inttegro::Amount
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
    const :balance, T::Hash[String, Inttegro::CustomerBalanceValue]
    const :billing_address, T.nilable(Inttegro::CustomerAddress), default: nil
    const :created_at, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :email_address, T.nilable(String), default: nil
    const :guest, T::Boolean
    const :id, String
    const :name, String
    const :phone_number, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :shipping_address, T.nilable(Inttegro::CustomerAddress), default: nil
    const :suffix, T.nilable(String), default: nil
    const :title, T.nilable(String), default: nil
    const :updated_at, T.nilable(String), default: nil
  end

  class CustomerPage < T::Struct
    const :customers, T::Array[Inttegro::Customer]
    const :number, Integer
    const :size, Integer
  end

  class CustomerResponse < T::Struct
    const :customer, T.nilable(Inttegro::Customer), default: nil
    const :error, T.nilable(Inttegro::ErrorPayload), default: nil
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
    const :token_type, Inttegro::SecretKeyTokenType
    const :issued_at, String
    const :updated_at, T.nilable(String), default: nil
    const :expires_at, T.nilable(String), default: nil
    const :status, Inttegro::SecretKeyStatus
    const :active, T::Boolean
    const :revoked_at, T.nilable(String), default: nil
    const :last_used_at, T.nilable(String), default: nil
    const :usage_count, T.nilable(Integer), default: nil
  end

  class DestroySecretKeyResponse < T::Struct
    const :key, Inttegro::SecretKey
  end

  class DisableAutomaticPayoutsRequest < T::Struct
    # This object intentionally has no fields.
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
    const :spec, Inttegro::PayoutSettingsMutationScheduleSpec
    const :type, String
  end

  class PayoutSettingsMutation < T::Struct
    const :destinations, T.nilable(T::Hash[String, String]), default: nil
    const :id, T.nilable(String), default: nil
    const :schedule, T.nilable(Inttegro::PayoutSettingsMutationSchedule), default: nil
  end

  class DisableAutomaticPayoutsResponse < T::Struct
    const :settings, T.nilable(Inttegro::PayoutSettingsMutation), default: nil
  end

  class DisableFinancialAccountPullResponse < T::Struct
    const :account, T.nilable(Inttegro::ConnectedFinancialAccount), default: nil
  end

  class DisableFinancialAccountPushResponse < T::Struct
    const :account, T.nilable(Inttegro::ConnectedFinancialAccount), default: nil
  end

  class DisactivatePaymentMethodRequest < T::Struct
    const :payment_method_id, String
  end

  class DisactivatePaymentMethodResponse < T::Struct
    const :payment_method, T.nilable(Inttegro::PaymentMethod), default: nil
  end

  class DisconnectFinancialAccountResponse < T::Struct
    const :account, T.nilable(Inttegro::CompactFinancialAccount), default: nil
  end

  class EnableAutomaticPayoutsRequest < T::Struct
    # This object intentionally has no fields.
  end

  class EnableAutomaticPayoutsResponse < T::Struct
    const :settings, T.nilable(Inttegro::PayoutSettingsMutation), default: nil
  end

  class EnableFinancialAccountPullResponse < T::Struct
    const :account, T.nilable(Inttegro::ConnectedFinancialAccount), default: nil
  end

  class EnableFinancialAccountPushResponse < T::Struct
    const :account, T.nilable(Inttegro::ConnectedFinancialAccount), default: nil
  end

  class ErrorEnvelope < T::Struct
    const :error, Inttegro::ErrorPayload
  end

  class FileActor < T::Struct
    const :type, String
    const :id, T.nilable(String), default: nil
    const :name, T.nilable(String), default: nil
    const :email, T.nilable(String), default: nil
  end

  class FileSource < T::Struct
    const :type, T.nilable(Inttegro::FileSourceType), default: nil
    const :service, T.nilable(String), default: nil
    const :upload_request_id, T.nilable(String), default: nil
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

  class PublicFileStorage < T::Struct
    const :encoding, Inttegro::FileStorageEncoding
    const :stored_size, Integer
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

  class File < T::Struct
    const :id, String
    const :purpose, String
    const :status, Inttegro::FileStatus
    const :scan_status, Inttegro::FileScanStatus
    const :name, T.nilable(String), default: nil
    const :filename, T.nilable(String), default: nil
    const :content_type, String
    const :size, Integer
    const :checksum_sha256, String
    const :created_by, Inttegro::FileActor
    const :source, Inttegro::FileSource
    const :media, T.nilable(Inttegro::FileMedia), default: nil
    const :storage, Inttegro::PublicFileStorage
    const :delivery, T.nilable(Inttegro::FileDelivery), default: nil
    const :latest_error, T.nilable(Inttegro::FileLatestError), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :metadata, T.nilable(T::Hash[String, String]), default: nil
    const :created_at, String
    const :updated_at, String
    const :available_at, T.nilable(String), default: nil
    const :expires_at, T.nilable(String), default: nil
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
    const :disposition, T.nilable(Inttegro::FileDisposition), default: nil
    const :delivery, T.nilable(Inttegro::FileContentsDeliveryMode), default: nil
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

  class FileLink < T::Struct
    const :id, String
    const :kind, Inttegro::FileLinkKind
    const :file_id, String
    const :purpose, String
    const :status, Inttegro::FileLinkStatus
    const :active, T::Boolean
    const :delivery, Inttegro::FileLinkDelivery
    const :access, Inttegro::FileLinkAccess
    const :created_by, Inttegro::FileLinkActor
    const :revoked_by, T.nilable(Inttegro::FileLinkActor), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :metadata, T.nilable(T::Hash[String, String]), default: nil
    const :created_at, String
    const :updated_at, String
    const :expires_at, String
    const :revoked_at, T.nilable(String), default: nil
  end

  class FileLinkCreation < T::Struct
    const :file_link, Inttegro::FileLink
    const :url, String
  end

  class FileLinkPage < T::Struct
    const :number, Integer
    const :size, Integer
    const :file_links, T::Array[Inttegro::FileLink]
  end

  class FileLinkPageResponse < T::Struct
    const :page, Inttegro::FileLinkPage
  end

  class FileLinkResponse < T::Struct
    const :file_link, Inttegro::FileLink
  end

  class FilePage < T::Struct
    const :number, Integer
    const :size, Integer
    const :files, T::Array[Inttegro::File]
  end

  class FilePageResponse < T::Struct
    const :page, Inttegro::FilePage
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
    const :references, T.nilable(T::Array[Inttegro::FileReferenceInput]), default: nil
  end

  class FileReferenceReconciliation < T::Struct
    const :reconciled, T::Boolean
  end

  class FileResponse < T::Struct
    const :file, Inttegro::File
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
    const :status, Inttegro::FileStatus
  end

  class FinalizeOrderEnvelope < T::Struct
    const :order, T.nilable(Inttegro::Order), default: nil
  end

  class FinalizeOrderRequest < T::Struct
    const :order_id, String
  end

  class FinancialAccountDoshAccount < T::Struct
    # This object intentionally has no fields.
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
    const :institution, T.nilable(Inttegro::FinancialInstitution), default: nil
    const :label, T.nilable(String), default: nil
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountPullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountPushConfiguration), default: nil
    const :reference, T.nilable(String), default: nil
    const :supplied, T.nilable(Inttegro::ResourceSupply), default: nil
    const :type, Inttegro::FinancialAccountType
    const :universal_fingerprint, T.nilable(String), default: nil
    const :verification, T.nilable(Inttegro::FinancialAccountDetailsVerification), default: nil
    const :bank_account, T.nilable(Inttegro::FinancialAccountBank), default: nil
    const :disconnected_at, T.nilable(String), default: nil
    const :dosh_account, T.nilable(Inttegro::FinancialAccountDoshAccount), default: nil
    const :owner, T.nilable(Inttegro::FinancialAccountOwner), default: nil
    const :wallet, T.nilable(Inttegro::FinancialAccountWallet), default: nil
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
    const :address, Inttegro::FinancialAccountOwnerInputAddress
  end

  class FinancialAccountRequestBasePullConfiguration < T::Struct
    const :enabled, T.nilable(T::Boolean), default: nil
  end

  class FinancialAccountRequestBasePushConfiguration < T::Struct
    const :enabled, T.nilable(T::Boolean), default: nil
  end

  class FinancialAccountBankRequestBankAccountGhanaBankAccount < T::Struct
    const :holder, T.nilable(Inttegro::FinancialAccountOwnerInput), default: nil
    const :number, String
    const :sort_code, T.nilable(String), default: nil
    const :swift_code, T.nilable(String), default: nil
  end

  class FinancialAccountBankRequestBankAccount < T::Struct
    const :type, Inttegro::BankAccountType
    const :ghana_bank_account, Inttegro::FinancialAccountBankRequestBankAccountGhanaBankAccount
  end

  class FinancialAccountBankRequest < T::Struct
    const :currency, String
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :description, T.nilable(String), default: nil
    const :label, String
    const :owner, T.nilable(Inttegro::FinancialAccountOwnerInput), default: nil
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountRequestBasePullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountRequestBasePushConfiguration), default: nil
    const :reference, String
    const :type, Inttegro::FinancialAccountBankRequestType
    const :bank_account, Inttegro::FinancialAccountBankRequestBankAccount
  end

  class FinancialAccountWalletRequestWalletMobileMoney < T::Struct
    const :account_number, String
    const :network, Inttegro::MobileMoneyNetwork
  end

  class FinancialAccountWalletRequestWallet < T::Struct
    const :type, Inttegro::WalletType
    const :mobile_money, Inttegro::FinancialAccountWalletRequestWalletMobileMoney
  end

  class FinancialAccountWalletRequest < T::Struct
    const :currency, String
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :description, T.nilable(String), default: nil
    const :label, String
    const :owner, Inttegro::FinancialAccountOwnerInput
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountRequestBasePullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountRequestBasePushConfiguration), default: nil
    const :reference, String
    const :type, Inttegro::FinancialAccountWalletRequestType
    const :wallet, Inttegro::FinancialAccountWalletRequestWallet
  end

  class FinancialAccountDoshRequestDoshAccount < T::Struct
    # This object intentionally has no fields.
  end

  class FinancialAccountDoshRequest < T::Struct
    const :currency, String
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :description, T.nilable(String), default: nil
    const :label, String
    const :owner, Inttegro::FinancialAccountOwnerInput
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountRequestBasePullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountRequestBasePushConfiguration), default: nil
    const :reference, String
    const :type, Inttegro::FinancialAccountDoshRequestType
    const :dosh_account, Inttegro::FinancialAccountDoshRequestDoshAccount
  end

  FinancialAccountCreateRequest = T.type_alias { T.any(Inttegro::FinancialAccountWalletRequest, Inttegro::FinancialAccountBankRequest, Inttegro::FinancialAccountDoshRequest) }

  class FinancialAccountDetails < T::Struct
    const :app_customer_local_fingerprint, T.nilable(String), default: nil
    const :app_local_fingerprint, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
    const :created_at, String
    const :currency, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :description, T.nilable(String), default: nil
    const :id, String
    const :institution, T.nilable(Inttegro::FinancialInstitution), default: nil
    const :label, T.nilable(String), default: nil
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountPullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountPushConfiguration), default: nil
    const :reference, T.nilable(String), default: nil
    const :supplied, T.nilable(Inttegro::ResourceSupply), default: nil
    const :type, Inttegro::FinancialAccountType
    const :universal_fingerprint, T.nilable(String), default: nil
    const :verification, T.nilable(Inttegro::FinancialAccountDetailsVerification), default: nil
  end

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
    const :address, T.nilable(Inttegro::FinancialAccountOwnerUpdateInputAddress), default: nil
  end

  class FinancialAccountPage < T::Struct
    const :accounts, T::Array[Inttegro::FinancialAccount]
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
    const :owner, T.nilable(Inttegro::FinancialAccountOwnerInput), default: nil
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountRequestBasePullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountRequestBasePushConfiguration), default: nil
    const :reference, String
    const :type, Inttegro::FinancialAccountType
  end

  class FinancialAccountUpdateRequest < T::Struct
    const :account_id, String
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :description, T.nilable(String), default: nil
    const :label, T.nilable(String), default: nil
    const :owner, T.nilable(Inttegro::FinancialAccountOwnerUpdateInput), default: nil
    const :reference, T.nilable(String), default: nil
  end

  class FinancialAccountWirePageAccountsItem < T::Struct
    const :id, T.nilable(String), default: nil
    const :type, T.nilable(Inttegro::FinancialAccountType), default: nil
    const :currency, T.nilable(String), default: nil
    const :label, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :created_at, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
  end

  class FinancialAccountWirePage < T::Struct
    const :number, T.nilable(Integer), default: nil
    const :size, T.nilable(Integer), default: nil
    const :accounts, T.nilable(T::Array[Inttegro::FinancialAccountWirePageAccountsItem]), default: nil
  end

  class FulfillUploadRequestRequest < T::Struct
    const :file, String
  end

  class GenerateSecretKeyRequest < T::Struct
    const :label, T.nilable(String), default: nil
  end

  class GeneratedSecretKey < T::Struct
    const :id, String
    const :label, T.nilable(String), default: nil
    const :token_type, Inttegro::SecretKeyTokenType
    const :issued_at, String
    const :token, String
  end

  class GenerateSecretKeyResponse < T::Struct
    const :key, Inttegro::GeneratedSecretKey
  end

  class GetPaymentMethodSettingsRequest < T::Struct
    # This object intentionally has no fields.
  end

  class PaymentMethodTypeSetting < T::Struct
    const :type, T.nilable(Inttegro::PaymentMethodType), default: nil
    const :name, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :enabled, T::Boolean
    const :confirms_use, T::Boolean
  end

  class PaymentMethodSettings < T::Struct
    const :mobile_money, T.nilable(Inttegro::PaymentMethodTypeSetting), default: nil
    const :bank_account, T.nilable(Inttegro::PaymentMethodTypeSetting), default: nil
    const :card, T.nilable(Inttegro::PaymentMethodTypeSetting), default: nil
    const :motito, T.nilable(Inttegro::PaymentMethodTypeSetting), default: nil
  end

  class GetPaymentMethodSettingsResponse < T::Struct
    const :settings, Inttegro::PaymentMethodSettings
  end

  class GetPayoutSettingsRequest < T::Struct
    # This object intentionally has no fields.
  end

  class PayoutSettingsLookupScheduleAgingSpec < T::Struct
    const :abide, String
    const :label, String
    const :t_plus, String
  end

  class PayoutSettingsLookupSchedule < T::Struct
    const :aging_spec, Inttegro::PayoutSettingsLookupScheduleAgingSpec
    const :description, String
    const :interval, String
    const :name, String
    const :schedule_on, String
    const :type, String
  end

  class PayoutSettingsLookup < T::Struct
    const :destinations, T::Hash[String, String]
    const :fx_enabled, T.nilable(T::Boolean), default: nil
    const :schedule, T.nilable(Inttegro::PayoutSettingsLookupSchedule), default: nil
  end

  class GetPayoutSettingsResponse < T::Struct
    const :settings, T.nilable(Inttegro::PayoutSettingsLookup), default: nil
  end

  class InitiateOTPRequest < T::Struct
    const :async_delivery, T.nilable(T::Boolean), default: nil
    const :message_template, T.nilable(String), default: nil
    const :purpose, T.nilable(String), default: nil
    const :recipient, String
    const :sender, T.nilable(String), default: nil
    const :service_name, String
    const :token_alphabet, T.nilable(String), default: nil
    const :token_alphabet_type, T.nilable(Inttegro::OTPAlphabetType), default: nil
    const :token_size, Integer
    const :validity_duration_in_minutes, T.nilable(Integer), default: nil
  end

  class OTPTransmission < T::Struct
    const :recipient, String
    const :sender_id, String
    const :sent_at, T.nilable(String), default: nil
    const :sent_via, T.nilable(Inttegro::OTPTransmissionSentVia), default: nil
    const :status, T.nilable(Inttegro::OTPTransmissionStatus), default: nil
  end

  class OTPTransaction < T::Struct
    const :cancel_reason, T.nilable(String), default: nil
    const :canceled_at, T.nilable(String), default: nil
    const :expires_at, String
    const :full_message, String
    const :id, String
    const :initiated_at, String
    const :status, Inttegro::OTPStatus
    const :transmission, T.nilable(Inttegro::OTPTransmission), default: nil
  end

  class InitiateOTPResponse < T::Struct
    const :transaction, Inttegro::OTPTransaction
  end

  class ListCountrySpecsRequest < T::Struct
    # This object intentionally has no fields.
  end

  class LookedUpApplication < T::Struct
    const :id, String
    const :name, String
    const :alias, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :created_at, String
    const :updated_at, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
  end

  class LookupApplicationResponse < T::Struct
    const :app, Inttegro::LookedUpApplication
  end

  class LookupBalanceTransactionRequest < T::Struct
    const :transaction_id, String
  end

  class LookupBalancesRequest < T::Struct
    # This object intentionally has no fields.
  end

  class LookupBroadcastRequest < T::Struct
    const :broadcast_id, String
  end

  class LookupBroadcastResponse < T::Struct
    const :broadcast, T.nilable(Inttegro::BroadcastDetail), default: nil
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
    const :account, T.nilable(Inttegro::FinancialAccount), default: nil
  end

  class LookupOTPRequest < T::Struct
    const :transaction_id, String
  end

  class LookupOTPResponse < T::Struct
    const :transaction, Inttegro::OTPTransaction
  end

  class LookupOrderRequest < T::Struct
    const :order_id, String
  end

  class LookupPaymentMethodRequest < T::Struct
    const :payment_method_id, String
  end

  class LookupPaymentMethodResponse < T::Struct
    const :payment_method, T.nilable(Inttegro::PaymentMethod), default: nil
  end

  class LookupPayoutRequest < T::Struct
    const :payout_id, String
  end

  class LookupPayoutResponse < T::Struct
    const :payout, T.nilable(Inttegro::Payout), default: nil
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
    const :key, Inttegro::SecretKey
  end

  class LookupUploadRequestRequest < T::Struct
    const :id, String
  end

  class MessageTemplateVariableItem < T::Struct
    const :about, T.nilable(String), default: nil
    const :default, T.nilable(Object), default: nil
    const :name, String
    const :required, T::Boolean
    const :type, Inttegro::MessageTemplateVariableItemType
  end

  class MessageTemplateVariable < T::Struct
    const :about, T.nilable(String), default: nil
    const :default, T.nilable(Object), default: nil
    const :items, T.nilable(T::Array[Inttegro::MessageTemplateVariableItem]), default: nil
    const :name, String
    const :required, T::Boolean
    const :type, Inttegro::MessageTemplateVariableType
  end

  class MessageTemplate < T::Struct
    const :id, String
    const :name, String
    const :about, T.nilable(String), default: nil
    const :channel, Inttegro::MessageTemplateChannel
    const :purpose, String
    const :locale, String
    const :status, Inttegro::MessageTemplateStatus
    const :version, Integer
    const :published_version, T.nilable(Integer), default: nil
    const :draft_version, Integer
    const :has_unpublished_changes, T::Boolean
    const :variables, T.nilable(T::Array[Inttegro::MessageTemplateVariable]), default: nil
    const :sms, T.nilable(Inttegro::MessageTemplateSMSContent), default: nil
    const :email, T.nilable(Inttegro::MessageTemplateEmailContent), default: nil
    const :attachments, T.nilable(Inttegro::MessageTemplateAttachmentIDs), default: nil
    const :created_at, String
    const :updated_at, String
    const :published_at, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
  end

  class MessageTemplateCreateFields < T::Struct
    const :name, String
    const :about, T.nilable(String), default: nil
    const :channel, Inttegro::MessageTemplateChannel
    const :purpose, String
    const :locale, T.nilable(String), default: nil
    const :variables, T.nilable(T::Array[Inttegro::MessageTemplateVariableInput]), default: nil
  end

  class MessageTemplateEnvelope < T::Struct
    const :message_template, Inttegro::MessageTemplate
  end

  class MessageTemplateIDRequest < T::Struct
    const :id, String
  end

  class RenderedSMSMessageTemplate < T::Struct
    const :full_message, String
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
    const :links, T.nilable(T::Array[Inttegro::MessageTemplateScannedLink]), default: nil
    const :normalized_text, String
    const :quarantine_notes, T.nilable(String), default: nil
    const :reason_codes, T.nilable(T::Array[String]), default: nil
    const :sanitized_html, T.nilable(String), default: nil
    const :scanner, String
    const :status, Inttegro::ContentSafetyStatus
  end

  class RenderedEmailMessageTemplate < T::Struct
    const :subject, String
    const :text, String
    const :html, T.nilable(String), default: nil
    const :from, T.nilable(Inttegro::MessageTemplateMailbox), default: nil
    const :reply_to, T.nilable(Inttegro::MessageTemplateMailbox), default: nil
    const :headers, T.nilable(T::Hash[String, String]), default: nil
    const :safety, T.nilable(Inttegro::MessageTemplateSafetyResult), default: nil
  end

  class RenderedMessageTemplate < T::Struct
    const :channel, Inttegro::MessageTemplateChannel
    const :attachments, T.nilable(Inttegro::MessageTemplateAttachmentIDs), default: nil
    const :sms, T.nilable(Inttegro::RenderedSMSMessageTemplate), default: nil
    const :email, T.nilable(Inttegro::RenderedEmailMessageTemplate), default: nil
  end

  class MessageTemplatePreview < T::Struct
    const :message_template, Inttegro::MessageTemplate
    const :rendered, Inttegro::RenderedMessageTemplate
  end

  class MessageTemplatesPage < T::Struct
    const :number, Integer
    const :size, Integer
    const :message_templates, T::Array[Inttegro::MessageTemplate]
  end

  class MessageTemplatesPageEnvelope < T::Struct
    const :page, Inttegro::MessageTemplatesPage
  end

  class MobileMoney < T::Struct
    const :network, Inttegro::MobileMoneyNetwork
    const :account_number, String
  end

  class OTPVerificationAttemptResult < T::Struct
    const :detail, T.nilable(String), default: nil
    const :verdict, Inttegro::OTPVerificationVerdict
  end

  class OTPVerificationAttempt < T::Struct
    const :attempted_at, String
    const :id, String
    const :presented_token, String
    const :recipient, String
    const :result, Inttegro::OTPVerificationAttemptResult
  end

  class OTPVerification < T::Struct
    const :transaction, Inttegro::OTPTransaction
    const :verification_attempt, Inttegro::OTPVerificationAttempt
  end

  class OrderDocumentDeliveryAttempt < T::Struct
    const :channel, T.nilable(Inttegro::DeliveryChannel), default: nil
    const :chime_id, T.nilable(String), default: nil
  end

  class OrderDocumentDeliveryFailure < T::Struct
    const :channel, T.nilable(Inttegro::DeliveryChannel), default: nil
    const :error, T.nilable(String), default: nil
  end

  class OrderDocumentDelivery < T::Struct
    const :deliveries, T.nilable(T::Array[Inttegro::OrderDocumentDeliveryAttempt]), default: nil
    const :document_kind, T.nilable(Inttegro::OrderDocumentKind), default: nil
    const :document_url, T.nilable(String), default: nil
    const :failed_channels, T.nilable(T::Array[Inttegro::DeliveryChannel]), default: nil
    const :failures, T.nilable(T::Array[Inttegro::OrderDocumentDeliveryFailure]), default: nil
    const :sent_channels, T.nilable(T::Array[Inttegro::DeliveryChannel]), default: nil
  end

  class OrderDocumentDeliveryRequest < T::Struct
    const :order_id, String
  end

  class OrderDocumentDeliveryResult < T::Struct
    const :delivery, T.nilable(Inttegro::OrderDocumentDelivery), default: nil
    const :error, T.nilable(Inttegro::ErrorPayload), default: nil
    const :order, T.nilable(Inttegro::Order), default: nil
  end

  class OrderEnvelope < T::Struct
    const :order, Inttegro::Order
  end

  class OrderPage < T::Struct
    const :number, T.nilable(Integer), default: nil
    const :size, T.nilable(Integer), default: nil
    const :orders, T.nilable(T::Array[Inttegro::Order]), default: nil
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

  class PageChimesResponse < T::Struct
    const :page, T.nilable(Inttegro::ChimePage), default: nil
  end

  class PageCustomersRequest < T::Struct
    const :page_number, Integer
    const :page_size, T.nilable(Integer), default: nil
  end

  class PageCustomersResponse < T::Struct
    const :page, T.nilable(Inttegro::CustomerPage), default: nil
  end

  class PageFileLinksRequest < T::Struct
    const :file_id, T.nilable(String), default: nil
    const :status, T.nilable(Inttegro::FileLinkStatus), default: nil
    const :page_number, T.nilable(Integer), default: nil
    const :page_size, T.nilable(Integer), default: nil
  end

  class PageFilesRequest < T::Struct
    const :purpose, T.nilable(String), default: nil
    const :status, T.nilable(Inttegro::FileStatus), default: nil
    const :page_number, T.nilable(Integer), default: nil
    const :page_size, T.nilable(Integer), default: nil
    const :created_after, T.nilable(String), default: nil
    const :created_before, T.nilable(String), default: nil
  end

  class PageFinancialAccountsRequest < T::Struct
    const :page_number, Integer
    const :page_size, T.nilable(Integer), default: nil
  end

  class PageFinancialAccountsResponse < T::Struct
    const :page, T.nilable(Inttegro::FinancialAccountWirePage), default: nil
    const :error, T.nilable(Inttegro::ErrorPayload), default: nil
  end

  class PageFinancialAccountsResponseInline < T::Struct
    const :page, T.nilable(Inttegro::FinancialAccountPage), default: nil
  end

  class PageMessageTemplatesRequest < T::Struct
    const :page, T.nilable(Integer), default: nil
    const :size, T.nilable(Integer), default: nil
    const :status, T.nilable(Inttegro::MessageTemplateStatus), default: nil
    const :channel, T.nilable(Inttegro::MessageTemplateChannel), default: nil
    const :purpose, T.nilable(String), default: nil
    const :locale, T.nilable(String), default: nil
  end

  class PageOrdersEnvelope < T::Struct
    const :page, T.nilable(Inttegro::OrderPage), default: nil
  end

  class PageOrdersRequest < T::Struct
    const :page_number, T.nilable(Integer), default: nil
    const :page_size, Integer
    const :customer_id, T.nilable(String), default: nil
  end

  class PagePayoutsRequest < T::Struct
    const :page_number, Integer
    const :page_size, T.nilable(Integer), default: nil
  end

  class PayoutPage < T::Struct
    const :number, Integer
    const :size, Integer
    const :payouts, T.nilable(T::Array[Inttegro::Payout]), default: nil
  end

  class PagePayoutsResponse < T::Struct
    const :page, T.nilable(Inttegro::PayoutPage), default: nil
  end

  class PageProductsRequest < T::Struct
    const :page_number, Integer
    const :page_size, T.nilable(Integer), default: nil
  end

  class ProductPriceSummary < T::Struct
    const :id, String
    const :active, T::Boolean
    const :label, T.nilable(String), default: nil
    const :nominal, Inttegro::Amount
  end

  class ProductShipmentDelivery < T::Struct
    # This object intentionally has no fields.
  end

  class ProductShipmentDownload < T::Struct
    # This object intentionally has no fields.
  end

  class ProductShipmentRender < T::Struct
    # This object intentionally has no fields.
  end

  class ProductShipmentService < T::Struct
    # This object intentionally has no fields.
  end

  class ProductShipmentStream < T::Struct
    # This object intentionally has no fields.
  end

  class ProductShipment < T::Struct
    const :type, Inttegro::ProductShipmentType
    const :delivery, T.nilable(Inttegro::ProductShipmentDelivery), default: nil
    const :download, T.nilable(Inttegro::ProductShipmentDownload), default: nil
    const :render, T.nilable(Inttegro::ProductShipmentRender), default: nil
    const :service, T.nilable(Inttegro::ProductShipmentService), default: nil
    const :stream, T.nilable(Inttegro::ProductShipmentStream), default: nil
  end

  class Product < T::Struct
    const :id, String
    const :type, Inttegro::ProductType
    const :reference, T.nilable(String), default: nil
    const :name, String
    const :description, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :category, T.nilable(String), default: nil
    const :prices, T.nilable(T::Array[Inttegro::ProductPriceSummary]), default: nil
    const :shipment, T.nilable(Inttegro::ProductShipment), default: nil
    const :media, T.nilable(Inttegro::ProductMedia), default: nil
    const :attributes, T.nilable(T::Array[Inttegro::ProductAttribute]), default: nil
    const :dimensions, T.nilable(Inttegro::ProductDimensions), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :active, T::Boolean
    const :created_at, String
    const :updated_at, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
    const :published_at, T.nilable(String), default: nil
    const :unit_dim, T.nilable(String), default: nil
  end

  class ProductPage < T::Struct
    const :number, T.nilable(Integer), default: nil
    const :size, T.nilable(Integer), default: nil
    const :products, T.nilable(T::Array[Inttegro::Product]), default: nil
  end

  class PageProductsResponse < T::Struct
    const :page, T.nilable(Inttegro::ProductPage), default: nil
  end

  class PagePurchaseIntentsRequest < T::Struct
    const :page_number, Integer
    const :page_size, Integer
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
    const :amount, T.nilable(Inttegro::Amount), default: nil
    const :attribution, T.nilable(Inttegro::PurchaseIntentActivityAttribution), default: nil
    const :created_at, String
    const :error_code, T.nilable(String), default: nil
    const :id, String
    const :order_id, T.nilable(String), default: nil
    const :payment_id, T.nilable(String), default: nil
    const :product_id, T.nilable(String), default: nil
    const :purchase_intent_id, String
    const :quantity, T.nilable(Integer), default: nil
    const :source, T.nilable(String), default: nil
    const :type, Inttegro::PurchaseIntentActivityType
    const :variant_product_id, T.nilable(String), default: nil
    const :visitor, T.nilable(Inttegro::PurchaseIntentActivityVisitor), default: nil
  end

  class PurchaseIntentActivityInline < T::Struct
    const :recent, T.nilable(T::Array[Inttegro::PurchaseIntentActivity]), default: nil
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
    const :nominal, Inttegro::Amount
  end

  class PurchaseIntentPrice < T::Struct
    const :active, T::Boolean
    const :id, T.nilable(String), default: nil
    const :label, T.nilable(String), default: nil
    const :nominal, Inttegro::Amount
    const :original, T.nilable(Inttegro::PurchaseIntentOriginalPrice), default: nil
  end

  class PurchaseIntentProduct < T::Struct
    const :id, String
    const :about, T.nilable(String), default: nil
    const :active, T::Boolean
    const :archived_at, T.nilable(String), default: nil
    const :attributes, T.nilable(T::Array[Inttegro::PurchaseIntentProductAttributesItem]), default: nil
    const :category, T.nilable(String), default: nil
    const :created_at, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :description, T.nilable(String), default: nil
    const :dimensions, T.nilable(Inttegro::PurchaseIntentProductDimensions), default: nil
    const :media, T.nilable(Inttegro::PurchaseIntentProductMedia), default: nil
    const :name, String
    const :published_at, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :shipment, T.nilable(Inttegro::PurchaseIntentProductShipment), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :type, Inttegro::ProductType
    const :unit_dim, T.nilable(String), default: nil
    const :updated_at, T.nilable(String), default: nil
    const :prices, T.nilable(T::Array[Inttegro::ProductPriceSummary]), default: nil
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
    const :order, T.nilable(Inttegro::PurchaseIntentUsageOrder), default: nil
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
    const :price, T.nilable(Inttegro::PurchaseIntentPrice), default: nil
    const :product, T.nilable(Inttegro::PurchaseIntentProduct), default: nil
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
    const :variant_axes, T::Array[Inttegro::PurchaseIntentVariantAxis]
    const :variants, T::Array[Inttegro::PurchaseIntentVariant]
  end

  class PurchaseIntent < T::Struct
    const :activity, T.nilable(Inttegro::PurchaseIntentActivityInline), default: nil
    const :allow_variants, T::Boolean
    const :application_id, String
    const :created_at, String
    const :expires_at, T.nilable(String), default: nil
    const :id, String
    const :inactive_at, T.nilable(String), default: nil
    const :merchant, T.nilable(Inttegro::PurchaseIntentMerchant), default: nil
    const :price, T.nilable(Inttegro::PurchaseIntentPrice), default: nil
    const :product, T.nilable(Inttegro::PurchaseIntentProduct), default: nil
    const :quantity, Inttegro::PurchaseIntentQuantity
    const :status, Inttegro::PurchaseIntentStatus
    const :updated_at, T.nilable(String), default: nil
    const :usage, Inttegro::PurchaseIntentUsage
    const :variant_set, T.nilable(Inttegro::PurchaseIntentVariantSetInline), default: nil
  end

  class PurchaseIntentPage < T::Struct
    const :number, Integer
    const :purchase_intents, T::Array[Inttegro::PurchaseIntent]
    const :size, Integer
  end

  class PagePurchaseIntentsResponse < T::Struct
    const :page, Inttegro::PurchaseIntentPage
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
    const :keys, T::Array[Inttegro::SecretKey]
  end

  class PageSecretKeysResponse < T::Struct
    const :page, Inttegro::SecretKeyPage
  end

  class PageUploadRequestsRequest < T::Struct
    const :purpose, T.nilable(String), default: nil
    const :status, T.nilable(Inttegro::UploadRequestStatus), default: nil
    const :resource, T.nilable(Inttegro::FileResource), default: nil
    const :page_number, T.nilable(Integer), default: nil
    const :page_size, T.nilable(Integer), default: nil
  end

  class PayOrderRequest < T::Struct
    const :order_id, String
    const :payment_method_data, T.nilable(Inttegro::PaymentMethodData), default: nil
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
    const :address, Inttegro::PaymentMethodOwnerInputAddress
    const :name, String
  end

  class PaymentMethodPage < T::Struct
    const :number, Integer
    const :payment_methods, T::Array[Inttegro::PaymentMethod]
    const :size, Integer
  end

  class PaymentMethodPageRequest < T::Struct
    const :customer_id, T.nilable(String), default: nil
    const :page_number, T.nilable(Integer), default: nil
    const :page_size, T.nilable(Integer), default: nil
  end

  class PaymentMethodPageResponse < T::Struct
    const :page, Inttegro::PaymentMethodPage
  end

  class PaymentMethodTokenizeBase < T::Struct
    const :customer_id, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :type, Inttegro::PaymentMethodTokenizeBaseType
  end

  class PaymentResult < T::Struct
    const :payment_id, T.nilable(String), default: nil
    const :order_id, T.nilable(String), default: nil
    const :status, T.nilable(Inttegro::PaymentResultStatus), default: nil
    const :requires_confirmation, T.nilable(T::Boolean), default: nil
    const :confirmation_sent, T.nilable(T::Boolean), default: nil
  end

  class PriceActionRequest < T::Struct
    const :price_id, String
  end

  PricePageItem = T.type_alias { Inttegro::CatalogPrice }

  class PricePage < T::Struct
    const :number, T.nilable(Integer), default: nil
    const :size, T.nilable(Integer), default: nil
    const :prices, T.nilable(T::Array[Inttegro::PricePageItem]), default: nil
  end

  class PricePageRequest < T::Struct
    const :page_number, T.nilable(Integer), default: nil
    const :page_size, T.nilable(Integer), default: nil
    const :product_id, T.nilable(String), default: nil
  end

  class PricePageResponse < T::Struct
    const :page, T.nilable(Inttegro::PricePage), default: nil
    const :error, T.nilable(Inttegro::ErrorPayload), default: nil
  end

  class PriceResponse < T::Struct
    const :price, T.nilable(Inttegro::CatalogPrice), default: nil
    const :error, T.nilable(Inttegro::ErrorPayload), default: nil
  end

  class ProductActionRequest < T::Struct
    const :product_id, String
  end

  class ProductResponse < T::Struct
    const :product, T.nilable(Inttegro::Product), default: nil
    const :error, T.nilable(Inttegro::ErrorPayload), default: nil
  end

  class PurchaseIntentActivityLog < T::Struct
    const :recent, T.nilable(T::Array[Inttegro::PurchaseIntentActivity]), default: nil
  end

  class PurchaseIntentResponse < T::Struct
    const :purchase_intent, Inttegro::PurchaseIntent
  end

  class PurchaseIntentVariantSet < T::Struct
    const :active, T::Boolean
    const :default_product_id, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :id, String
    const :name, String
    const :reference, T.nilable(String), default: nil
    const :variant_axes, T::Array[Inttegro::PurchaseIntentVariantAxis]
    const :variants, T::Array[Inttegro::PurchaseIntentVariant]
  end

  class ReconnectFinancialAccountResponse < T::Struct
    const :account, T.nilable(Inttegro::CompactFinancialAccount), default: nil
  end

  class RefundPage < T::Struct
    const :number, Integer
    const :refunds, T::Array[Inttegro::Refund]
    const :size, Integer
  end

  class RefundPageResponse < T::Struct
    const :page, Inttegro::RefundPage
  end

  class RefundResponse < T::Struct
    const :refund, Inttegro::Refund
  end

  class RenderMessageTemplatePreviewRequest < T::Struct
    const :message_template, Inttegro::MessageTemplateReference
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
    const :decision, Inttegro::UploadReviewDecision
    const :id, String
    const :public_message, T.nilable(String), default: nil
    const :reasons, T.nilable(T::Array[Inttegro::UploadRequestReviewReasonInput]), default: nil
  end

  class ReviewUploadRequestAttemptByOrdinalRequest < T::Struct
    const :attempt_ordinal, Integer
    const :decision, Inttegro::UploadReviewDecision
    const :id, String
    const :public_message, T.nilable(String), default: nil
    const :reasons, T.nilable(T::Array[Inttegro::UploadRequestReviewReasonInput]), default: nil
  end

  ReviewUploadRequestAttemptRequest = T.type_alias { T.any(Inttegro::ReviewUploadRequestAttemptByIDRequest, Inttegro::ReviewUploadRequestAttemptByOrdinalRequest) }

  class RevokeFileLinkRequest < T::Struct
    const :id, String
    const :revoked_by, T.nilable(Inttegro::FileActorInput), default: nil
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
    const :email, T.nilable(Inttegro::ChimeEmailMessage), default: nil
    const :errors, T.nilable(T::Array[Inttegro::ScheduleError]), default: nil
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
    const :scheduled_chime, T.nilable(Inttegro::ScheduleCancelDetail), default: nil
  end

  class ScheduleChimeRequestRequestMeta < T::Struct
    const :idempotency_key, T.nilable(String), default: nil
  end

  class ScheduleChimeRequest < T::Struct
    const :request_meta, T.nilable(Inttegro::ScheduleChimeRequestRequestMeta), default: nil
    const :recipients, T::Array[Inttegro::ChimeRecipient]
    const :send_after, String
    const :full_message, T.nilable(String), default: nil
    const :email, T.nilable(Inttegro::ChimeEmailMessageInput), default: nil
    const :message_template, T.nilable(Inttegro::MessageTemplateReference), default: nil
    const :sender_id, T.nilable(String), default: nil
    const :purpose, T.nilable(String), default: nil
  end

  class ScheduleCreationDetail < T::Struct
    const :created_at, String
    const :customer_ids, T.nilable(T::Array[String]), default: nil
    const :email, T.nilable(Inttegro::ChimeEmailMessage), default: nil
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
    const :email, T.nilable(Inttegro::ChimeEmailMessage), default: nil
    const :errors, T.nilable(T::Array[Inttegro::ScheduleError]), default: nil
    const :executed_at, T.nilable(String), default: nil
    const :id, String
    const :idempotency_key, T.nilable(String), default: nil
    const :purpose, T.nilable(String), default: nil
    const :recipients, T::Array[String]
    const :send_after, String
    const :sender_id, String
  end

  class ScheduleLookupResponse < T::Struct
    const :scheduled_chime, T.nilable(Inttegro::ScheduleDetail), default: nil
  end

  class SchedulePayoutRequest < T::Struct
    const :destination_id, String
    const :execute_after, T.nilable(String), default: nil
    const :max_amount, T.nilable(Integer), default: nil
    const :reference, String
  end

  class SchedulePayoutResponse < T::Struct
    const :payout, T.nilable(Inttegro::Payout), default: nil
  end

  class ScheduleResponse < T::Struct
    const :scheduled_chime, T.nilable(Inttegro::ScheduleCreationDetail), default: nil
  end

  class SecretKeyUsageRow < T::Struct
    const :secret_key_id, String
    const :occurred_at, String
    const :auth_result, Inttegro::SecretKeyAuthResult
  end

  class SecretKeyUsagePage < T::Struct
    const :number, Integer
    const :size, Integer
    const :count, Integer
    const :total, Integer
    const :has_more, T::Boolean
    const :rows, T::Array[Inttegro::SecretKeyUsageRow]
  end

  class SecretKeyUsage < T::Struct
    const :key, Inttegro::SecretKey
    const :usage, Inttegro::SecretKeyUsagePage
  end

  class SecretKeyUsageRequest < T::Struct
    const :number, T.nilable(Integer), default: nil
    const :page, T.nilable(Integer), default: nil
    const :secret_key_id, String
    const :size, T.nilable(Integer), default: nil
  end

  class SendChimeRequestRequestMeta < T::Struct
    const :idempotency_key, T.nilable(String), default: nil
  end

  class SendChimeRequest < T::Struct
    const :recipient, Inttegro::ChimeRecipient
    const :full_message, T.nilable(String), default: nil
    const :email, T.nilable(Inttegro::ChimeEmailMessageInput), default: nil
    const :message_template, T.nilable(Inttegro::MessageTemplateReference), default: nil
    const :sender_id, T.nilable(String), default: nil
    const :purpose, T.nilable(String), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :request_meta, T.nilable(Inttegro::SendChimeRequestRequestMeta), default: nil
  end

  class SetPayoutDestinationsRequest < T::Struct
    const :destinations, T::Hash[String, String]
  end

  class SetPayoutDestinationsResponse < T::Struct
    const :settings, T.nilable(Inttegro::PayoutSettingsMutation), default: nil
  end

  class TokenizeMobileMoneyPaymentMethodRequestMobileMoney < T::Struct
    const :account_number, String
    const :network, Inttegro::MobileMoneyNetwork
  end

  class TokenizeMobileMoneyPaymentMethodRequest < T::Struct
    const :customer_id, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :type, Inttegro::TokenizeMobileMoneyPaymentMethodRequestType
    const :mobile_money, Inttegro::TokenizeMobileMoneyPaymentMethodRequestMobileMoney
    const :owner, Inttegro::PaymentMethodOwnerInput
  end

  class TokenizePaymentMethodResponse < T::Struct
    const :payment_method, T.nilable(Inttegro::PaymentMethod), default: nil
  end

  class UnarchivePaymentMethodRequest < T::Struct
    const :payment_method_id, String
  end

  class UnarchivePaymentMethodResponse < T::Struct
    const :payment_method, T.nilable(Inttegro::PaymentMethod), default: nil
  end

  class UpdateApplicationRequest < T::Struct
    const :name, T.nilable(String), default: nil
    const :alias, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :legal_entity_type, T.nilable(String), default: nil
  end

  class UpdatedApplication < T::Struct
    const :id, String
    const :name, String
    const :alias, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :created_at, String
    const :updated_at, T.nilable(String), default: nil
  end

  class UpdateApplicationResponse < T::Struct
    const :app, Inttegro::UpdatedApplication
  end

  class UpdateCustomerRequest < T::Struct
    const :billing_address, T.nilable(Inttegro::CustomerAddressInput), default: nil
    const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
    const :customer_id, String
    const :email_address, T.nilable(String), default: nil
    const :name, T.nilable(String), default: nil
    const :phone_number, T.nilable(String), default: nil
    const :reference, T.nilable(String), default: nil
    const :shipping_address, T.nilable(Inttegro::CustomerAddressInput), default: nil
    const :suffix, T.nilable(String), default: nil
    const :title, T.nilable(String), default: nil
  end

  class UpdatedGhanaBankAccount < T::Struct
    const :branch, T.nilable(String), default: nil
    const :holder, Inttegro::FinancialAccountOwner
    const :name, String
    const :number, String
    const :sort_code, T.nilable(String), default: nil
    const :swift_code, T.nilable(String), default: nil
  end

  class UpdatedFinancialAccountBank < T::Struct
    const :id, String
    const :type, Inttegro::BankAccountType
    const :ghana_bank_account, T.nilable(Inttegro::UpdatedGhanaBankAccount), default: nil
  end

  class UpdatedFinancialAccountDoshAccount < T::Struct
    # This object intentionally has no fields.
  end

  class UpdatedFinancialAccountAddress < T::Struct
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

  class UpdatedFinancialAccountOwner < T::Struct
    const :address, Inttegro::UpdatedFinancialAccountAddress
    const :name, String
  end

  class UpdatedFinancialAccountWallet < T::Struct
    const :id, String
    const :type, Inttegro::WalletType
    const :mobile_money, T.nilable(Inttegro::FinancialAccountWalletMobileMoney), default: nil
  end

  class UpdatedFinancialAccount < T::Struct
    const :app_customer_local_fingerprint, T.nilable(String), default: nil
    const :app_local_fingerprint, T.nilable(String), default: nil
    const :archived_at, T.nilable(String), default: nil
    const :created_at, String
    const :currency, String
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :description, T.nilable(String), default: nil
    const :id, String
    const :institution, T.nilable(Inttegro::FinancialInstitution), default: nil
    const :label, T.nilable(String), default: nil
    const :pull_configuration, T.nilable(Inttegro::FinancialAccountPullConfiguration), default: nil
    const :push_configuration, T.nilable(Inttegro::FinancialAccountPushConfiguration), default: nil
    const :reference, T.nilable(String), default: nil
    const :supplied, T.nilable(Inttegro::ResourceSupply), default: nil
    const :type, Inttegro::FinancialAccountType
    const :universal_fingerprint, T.nilable(String), default: nil
    const :verification, T.nilable(Inttegro::FinancialAccountDetailsVerification), default: nil
    const :bank_account, T.nilable(Inttegro::UpdatedFinancialAccountBank), default: nil
    const :disconnected_at, T.nilable(String), default: nil
    const :dosh_account, T.nilable(Inttegro::UpdatedFinancialAccountDoshAccount), default: nil
    const :owner, T.nilable(Inttegro::UpdatedFinancialAccountOwner), default: nil
    const :wallet, T.nilable(Inttegro::UpdatedFinancialAccountWallet), default: nil
  end

  class UpdateFinancialAccountResponse < T::Struct
    const :account, T.nilable(Inttegro::UpdatedFinancialAccount), default: nil
  end

  class UpdateMessageTemplateRequest < T::Struct
    const :id, String
    const :name, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :channel, T.nilable(Inttegro::MessageTemplateChannel), default: nil
    const :purpose, T.nilable(String), default: nil
    const :locale, T.nilable(String), default: nil
    const :variables, T.nilable(T::Array[Inttegro::MessageTemplateVariableInput]), default: nil
    const :sms, T.nilable(Inttegro::MessageTemplateSMSContent), default: nil
    const :email, T.nilable(Inttegro::MessageTemplateEmailContent), default: nil
    const :attachments, T.nilable(Inttegro::MessageTemplateAttachmentIDs), default: nil
  end

  class UpdateOrderRequestPaymentMethodData < T::Struct
    const :type, Inttegro::UpdateOrderRequestPaymentMethodDataType
    const :mobile_money, T.nilable(Inttegro::PaymentMethodDataMobileMoney), default: nil
  end

  class UpdateOrderRequest < T::Struct
    const :clear_payment_method, T.nilable(T::Boolean), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :invoice_settings, T.nilable(Inttegro::InvoiceSettings), default: nil
    const :finalize, T.nilable(T::Boolean), default: nil
    const :line_items, T.nilable(T::Array[Inttegro::LineItem]), default: nil
    const :number, T.nilable(String), default: nil
    const :receipt_number, T.nilable(String), default: nil
    const :order_id, String
    const :payment_method_data, T.nilable(Inttegro::UpdateOrderRequestPaymentMethodData), default: nil
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
    const :address, T.nilable(Inttegro::UpdatePaymentMethodRequestOwnerAddress), default: nil
  end

  class UpdatePaymentMethodRequest < T::Struct
    const :payment_method_id, String
    const :custom_data, T.nilable(T::Hash[String, T.nilable(String)]), default: nil
    const :active, T.nilable(T::Boolean), default: nil
    const :archived, T.nilable(T::Boolean), default: nil
    const :owner, T.nilable(Inttegro::UpdatePaymentMethodRequestOwner), default: nil
  end

  class UpdatePaymentMethodResponse < T::Struct
    const :payment_method, T.nilable(Inttegro::PaymentMethod), default: nil
  end

  class UpdatePriceRequest < T::Struct
    const :price_id, String
    const :label, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
  end

  class UpdateProductRequest < T::Struct
    const :product_id, String
    const :type, T.nilable(Inttegro::ProductType), default: nil
    const :name, T.nilable(String), default: nil
    const :description, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :category, T.nilable(String), default: nil
    const :shipment, T.nilable(Inttegro::ProductShipmentInput), default: nil
    const :dimensions, T.nilable(Inttegro::ProductDimensions), default: nil
    const :unit_dimension, T.nilable(String), default: nil
    const :media, T.nilable(Inttegro::ProductMedia), default: nil
    const :images, T.nilable(T::Array[String]), default: nil
    const :attributes, T.nilable(T::Array[Inttegro::ProductAttribute]), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
  end

  class UpdatedProduct < T::Struct
    const :id, String
    const :name, String
    const :description, T.nilable(String), default: nil
    const :about, T.nilable(String), default: nil
    const :type, Inttegro::ProductType
    const :reference, T.nilable(String), default: nil
    const :tax_code, T.nilable(String), default: nil
    const :category, T.nilable(String), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :dimensions, T.nilable(Inttegro::ProductDimensions), default: nil
    const :prices, T.nilable(T::Array[Inttegro::ProductPriceSummary]), default: nil
    const :unit_dim, T.nilable(String), default: nil
    const :created_at, String
    const :updated_at, T.nilable(String), default: nil
  end

  class UpdateProductResponse < T::Struct
    const :product, T.nilable(Inttegro::UpdatedProduct), default: nil
  end

  class UpdatePurchaseIntentRequestQuantity < T::Struct
    const :min, Integer
    const :max, T.nilable(Integer), default: nil
  end

  class UpdatePurchaseIntentRequest < T::Struct
    const :expires_at, T.nilable(String), default: nil
    const :id, T.nilable(String), default: nil
    const :quantity, T.nilable(Inttegro::UpdatePurchaseIntentRequestQuantity), default: nil
    const :purchase_intent_id, T.nilable(String), default: nil
    const :reactivate, T.nilable(T::Boolean), default: nil
  end

  class UpdateSecretKeyRequest < T::Struct
    const :label, String
    const :secret_key_id, String
  end

  class UpdateSecretKeyResponse < T::Struct
    const :key, Inttegro::SecretKey
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
    const :decision, Inttegro::UploadReviewDecision
    const :file_id, T.nilable(String), default: nil
    const :public_message, T.nilable(String), default: nil
    const :reasons, T.nilable(T::Array[Inttegro::UploadRequestReviewReason]), default: nil
    const :reviewed_at, String
    const :type, Inttegro::UploadReviewType
  end

  class UploadRequestAttempt < T::Struct
    const :attempted_at, String
    const :content_type, T.nilable(String), default: nil
    const :declared_size, T.nilable(Integer), default: nil
    const :error, T.nilable(Inttegro::UploadRequestLatestError), default: nil
    const :failed_at, T.nilable(String), default: nil
    const :file_id, T.nilable(String), default: nil
    const :filename, T.nilable(String), default: nil
    const :id, String
    const :ordinal, Integer
    const :review, T.nilable(Inttegro::UploadRequestReview), default: nil
    const :status, String
    const :succeeded_at, T.nilable(String), default: nil
    const :upload_request_id, String
  end

  class UploadRequestDetails < T::Struct
    const :id, String
    const :purpose, String
    const :status, Inttegro::UploadRequestStatus
    const :active, T::Boolean
    const :file_id, T.nilable(String), default: nil
    const :upload_url, T.nilable(String), default: nil
    const :constraints, Inttegro::UploadRequestConstraints
    const :display_data, Inttegro::UploadRequestDisplay, name: "display"
    const :subject, Inttegro::FileParty
    const :recipient, Inttegro::FileParty
    const :resource, Inttegro::FileResource
    const :requester, Inttegro::UploadRequestActor
    const :attempts, Inttegro::UploadRequestAttempts
    const :latest_error, T.nilable(Inttegro::UploadRequestLatestError), default: nil
    const :canceled_by, T.nilable(Inttegro::UploadRequestActor), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :metadata, T.nilable(T::Hash[String, String]), default: nil
    const :created_at, String
    const :updated_at, String
    const :expires_at, String
    const :uploading_at, T.nilable(String), default: nil
    const :fulfilled_at, T.nilable(String), default: nil
    const :expired_at, T.nilable(String), default: nil
    const :canceled_at, T.nilable(String), default: nil
    const :attempt, T.nilable(Inttegro::UploadRequestAttempt), default: nil
  end

  class UploadFulfillment < T::Struct
    const :upload_request, Inttegro::UploadRequestDetails
    const :file, Inttegro::FileUploadReceipt
  end

  class UploadRequest < T::Struct
    const :id, String
    const :purpose, String
    const :status, Inttegro::UploadRequestStatus
    const :active, T::Boolean
    const :file_id, T.nilable(String), default: nil
    const :upload_url, T.nilable(String), default: nil
    const :constraints, Inttegro::UploadRequestConstraints
    const :display_data, Inttegro::UploadRequestDisplay, name: "display"
    const :subject, Inttegro::FileParty
    const :recipient, Inttegro::FileParty
    const :resource, Inttegro::FileResource
    const :requester, Inttegro::UploadRequestActor
    const :attempts, Inttegro::UploadRequestAttempts
    const :latest_error, T.nilable(Inttegro::UploadRequestLatestError), default: nil
    const :canceled_by, T.nilable(Inttegro::UploadRequestActor), default: nil
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
    const :upload_requests, T::Array[Inttegro::UploadRequest]
  end

  class UploadRequestPageResponse < T::Struct
    const :page, Inttegro::UploadRequestPage
  end

  class UploadRequestResponse < T::Struct
    const :upload_request, Inttegro::UploadRequest
  end

  class UploadRequestValidationFailureError < T::Struct
    const :code, String
    const :param, T.nilable(String), default: nil
    const :message, String
    const :retryable, T::Boolean
  end

  class UploadRequestValidationFailure < T::Struct
    const :upload_request, Inttegro::UploadRequestDetails
    const :error, Inttegro::UploadRequestValidationFailureError
  end

  class UploadRequestWithAttemptResponse < T::Struct
    const :upload_request, Inttegro::UploadRequestDetails
  end

  class VerifyOTPRequest < T::Struct
    const :transaction_id, String
    const :recipient, String
    const :token, String
  end
end
