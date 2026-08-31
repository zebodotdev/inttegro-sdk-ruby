# frozen_string_literal: true

module Commerce
  # String constants for every enum published by the Inttegro API.
  #
  # Example: Commerce::Enums::ProductType::DIGITAL
  module Enums
    CATALOG = {
      AppManagementRole: { PARENT: "parent", CHILD: "child" },
      AppCredentialOwner: { CHILD: "child", PARENT: "parent" },
      AppRelationshipKind: { PLACEMENT: "placement" },
      AppRelationshipStatus: { ACTIVE: "active", INACTIVE: "inactive", SUSPENDED: "suspended", REVOKED: "revoked" },
      SecretKeyTokenType: { BEARER: "bearer" },
      SecretKeyStatus: { ACTIVE: "active", REVOKED: "revoked", EXPIRED: "expired" },
      SecretKeyAuthResult: { SUCCEEDED: "succeeded", FAILED: "failed" },
      FileStatus: { UPLOADING: "uploading", PROCESSING: "processing", AVAILABLE: "available", FAILED: "failed", DELETED: "deleted" },
      FileDisposition: { ATTACHMENT: "attachment", INLINE: "inline" },
      FileDelivery: { STREAM: "stream", REDIRECT: "redirect" },
      FileScanStatus: { PENDING: "pending", PASSED: "passed", FAILED: "failed", SKIPPED: "skipped" },
      FileSourceType: { DIRECT: "direct", UPLOAD_REQUEST: "upload_request", SERVICE: "service" },
      FileStorageEncoding: { IDENTITY: "identity", BROTLI: "br" },
      FileLinkStatus: { ACTIVE: "active", REVOKED: "revoked", EXPIRED: "expired", DISABLED: "disabled" },
      FileLinkKind: { PUBLIC: "public" },
      FileLinkDeliveryMode: { REDIRECT: "redirect", DOWNLOAD: "download", INLINE: "inline" },
      UploadRequestStatus: { PENDING: "pending", UPLOADING: "uploading", FULFILLED: "fulfilled", EXPIRED: "expired", CANCELED: "canceled", FAILED: "failed" },
      UploadReviewDecision: { APPROVED: "approved", REJECTED: "rejected" },
      UploadReviewType: { AUTOMATIC: "automatic", MANUAL: "manual" },
      PaymentNextActionType: { CONFIRM_PAYMENT: "confirm_payment", EXECUTE: "execute", REDIRECT: "redirect", AUTHORIZE: "authorize", NONE: "none" },
      PaymentConfirmationChannel: { SMS: "sms", EMAIL: "email", PUSH: "push" },
      PaymentMethodType: { MOBILE_MONEY: "mobile_money", BANK_ACCOUNT: "bank_account", CARD: "card", MOTITO: "motito" },
      MobileMoneyNetwork: { AIRTEL: "airtel", MTN: "mtn", TELECEL: "telecel", VODAFONE: "vodafone" },
      ProductType: { PHYSICAL: "physical", DIGITAL: "digital", SERVICE: "service", VOUCHER: "voucher", CUSTOM: "custom", CAUSE: "cause" },
      ProductShipmentType: { DELIVERY: "delivery", DOWNLOAD: "download", RENDER: "render", SERVICE: "service", STREAM: "stream" },
      ProductShipmentInputType: { DELIVERY: "delivery", DOWNLOAD: "download", RENDER: "render", STREAM: "stream" },
      LineItemType: { PRODUCT: "product", FEE: "fee", SHIPPING: "shipping" },
      PurchaseIntentStatus: { ACTIVE: "active", EXPIRED: "expired", INACTIVE: "inactive", USED: "used" },
      PurchaseIntentActivityType: { EXPIRED_VIEWED: "expired_viewed", ORDER_CREATED: "order_created", PAYMENT_FAILED: "payment_failed", PAYMENT_STARTED: "payment_started", VIEWED: "viewed" },
      FinancialAccountType: { WALLET: "wallet", BANK_ACCOUNT: "bank_account", DOSH_ACCOUNT: "dosh_account" },
      WalletType: { MOBILE_MONEY: "mobile_money" },
      BankAccountType: { GHANA_BANK_ACCOUNT: "ghana_bank_account" },
      MessageTemplateChannel: { SMS: "sms", EMAIL: "email" },
      MessageTemplateStatus: { DRAFT: "draft", PUBLISHED: "published", ARCHIVED: "archived" },
      MessageTemplateVariableType: { STRING: "string", NUMBER: "number", INTEGER: "integer", BOOLEAN: "boolean", URL: "url", EMAIL: "email", PHONE: "phone", DATE: "date", DATETIME: "datetime", ARRAY: "array" },
      MessageTemplateVariableItemType: { STRING: "string", NUMBER: "number", INTEGER: "integer", BOOLEAN: "boolean", URL: "url", EMAIL: "email", PHONE: "phone", DATE: "date", DATETIME: "datetime" },
      ContentSafetyStatus: { ALLOWED: "allowed", REJECTED: "rejected", QUARANTINED: "quarantined" },
      OrderDocumentKind: { INVOICE: "invoice", RECEIPT: "receipt" },
      DeliveryChannel: { EMAIL: "email", SMS: "sms" },
      CheckoutOrderStatus: { PREPARING: "preparing", REQUIRES_PAYMENT: "requires_payment", COMPLETED: "completed", CANCELED: "canceled", EXPIRED: "expired" },
      OrderStatus: { PREPARING: "preparing", REQUIRES_PAYMENT: "requires_payment", PAID: "paid", COMPLETED: "completed", CANCELED: "canceled", EXPIRED: "expired", UNKNOWN: "unknown" },
      OrderPaymentStatus: { INITIATED: "initiated", REQUIRES_ACTION: "requires_action", OVERDUE: "overdue", EXECUTED: "executed", PAID: "paid", CANCELED: "canceled", EXPIRED: "expired", FAILED: "failed", UNKNOWN: "unknown" },
      PaymentAttemptStatus: { INITIATED: "initiated", EXECUTED: "executed", SUCCEEDED: "succeeded", CANCELED: "canceled", EXPIRED: "expired", FAILED: "failed", UNKNOWN: "unknown" },
      CheckoutPaymentStatus: { REQUIRES_ACTION: "requires_action", PROCESSING: "processing", SUCCEEDED: "succeeded", FAILED: "failed", CANCELLED: "cancelled" },
      PaymentResponseStatus: { PENDING: "pending", REQUIRES_CONFIRMATION: "requires_confirmation", PROCESSING: "processing", SUCCEEDED: "succeeded", FAILED: "failed" },
      OrderCreatedFromResourceType: { PURCHASE_INTENT: "purchase_intent" },
      RefundReason: { REQUESTED_BY_CUSTOMER: "requested_by_customer", DUPLICATE: "duplicate", FRAUDULENT: "fraudulent", ORDER_CANCELED: "order_canceled", ITEM_RETURNED: "item_returned", ITEM_DAMAGED: "item_damaged", ITEM_NOT_RECEIVED: "item_not_received", ITEM_NOT_AS_DESCRIBED: "item_not_as_described", CUSTOM: "custom" },
      RefundStatus: { CANCELED: "canceled", FAILED: "failed", PENDING: "pending", PROCESSING: "processing", SUCCEEDED: "succeeded" },
      BalanceTransactionType: { PAYMENT: "payment", REFUND: "refund" },
      PayoutStatus: { INITIALIZED: "initialized", SCHEDULED: "scheduled", PROCESSING: "processing", EXECUTING: "executing", SUCCEEDED: "succeeded", INVALID: "invalid", CANCELED: "canceled" },
      ChimeRecipientType: { PHONE: "phone", EMAIL: "email" },
      ChimeTransport: { SMS: "sms", EMAIL: "email" },
      ChimeEmailSchemaKind: { GMAIL_VIEW_ACTION: "gmail_view_action", SCHEMA_ORG_ORDER: "schema_org_order", SCHEMA_ORG_INVOICE: "schema_org_invoice" },
      OTPAlphabetType: { NUMERIC: "numeric", ALPHA: "alpha", ALPHANUMERIC: "alphanumeric" },
      OTPStatus: { CANCELED: "canceled", EXPIRED: "expired", PENDING: "pending", PENDING_DELIVERY: "pending_delivery", PENDING_VERIFICATION: "pending_verification", VERIFIED: "verified" },
      OTPTransmissionStatus: { DELIVERED: "delivered", FAILED: "failed", SUBMITTED: "submitted" },
      OTPVerificationVerdict: { FAIL: "fail", PASS: "pass" }
    }.freeze

    CATALOG.each do |group_name, entries|
      group = Module.new
      entries.each { |name, value| group.const_set(name, value.freeze) }
      group.define_singleton_method(:values) { entries.values.freeze }
      const_set(group_name, group)
    end
  end
end
