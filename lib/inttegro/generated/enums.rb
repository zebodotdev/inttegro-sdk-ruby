# frozen_string_literal: true
# typed: strict
# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require "sorbet-runtime"

module Inttegro
  class AppCredentialOwner < T::Enum
    enums do
      CHILD = new("child")
      PARENT = new("parent")
    end
  end

  class AppManagementRole < T::Enum
    enums do
      PARENT = new("parent")
      CHILD = new("child")
    end
  end

  class AppRelationshipKind < T::Enum
    enums do
      PLACEMENT = new("placement")
    end
  end

  class AppRelationshipStatus < T::Enum
    enums do
      ACTIVE = new("active")
      INACTIVE = new("inactive")
      SUSPENDED = new("suspended")
      REVOKED = new("revoked")
    end
  end

  class BalanceTransactionType < T::Enum
    enums do
      PAYMENT = new("payment")
      REFUND = new("refund")
    end
  end

  class BankAccountType < T::Enum
    enums do
      GHANA_BANK_ACCOUNT = new("ghana_bank_account")
    end
  end

  class CheckoutInvoiceViewStatus < T::Enum
    enums do
      DRAFT = new("draft")
      REQUIRES_PAYMENT = new("requires_payment")
      OVERDUE = new("overdue")
      PAID = new("paid")
      EXPIRED = new("expired")
      CANCELED = new("canceled")
    end
  end

  class CheckoutMobileMoneyDataNetwork < T::Enum
    enums do
      MTN = new("mtn")
      VODAFONE = new("vodafone")
      AIRTEL = new("airtel")
      TELECEL = new("telecel")
    end
  end

  class CheckoutOrderStatus < T::Enum
    enums do
      PREPARING = new("preparing")
      REQUIRES_PAYMENT = new("requires_payment")
      COMPLETED = new("completed")
      PAID = new("paid")
      CANCELED = new("canceled")
      EXPIRED = new("expired")
      UNKNOWN = new("unknown")
    end
  end

  class CheckoutPayRequestPaymentMethodDataType < T::Enum
    enums do
      MOBILE_MONEY = new("mobile_money")
    end
  end

  class CheckoutPaymentMethodDataType < T::Enum
    enums do
      MOBILE_MONEY = new("mobile_money")
    end
  end

  class ChimeEmailSchemaKind < T::Enum
    enums do
      GMAIL_VIEW_ACTION = new("gmail_view_action")
      SCHEMA_ORG_ORDER = new("schema_org_order")
      SCHEMA_ORG_INVOICE = new("schema_org_invoice")
    end
  end

  class ChimeInlineRecipientVariant1Type < T::Enum
    enums do
      PHONE = new("phone")
    end
  end

  class ChimeInlineRecipientVariant2Type < T::Enum
    enums do
      EMAIL = new("email")
    end
  end

  class ChimeRecipientType < T::Enum
    enums do
      PHONE = new("phone")
      EMAIL = new("email")
    end
  end

  class ChimeTransport < T::Enum
    enums do
      SMS = new("sms")
      EMAIL = new("email")
    end
  end

  class ContentSafetyStatus < T::Enum
    enums do
      ALLOWED = new("allowed")
      REJECTED = new("rejected")
      QUARANTINED = new("quarantined")
    end
  end

  class CreateEmailMessageTemplateRequestChannel < T::Enum
    enums do
      EMAIL = new("email")
    end
  end

  class CreateSMSMessageTemplateRequestChannel < T::Enum
    enums do
      SMS = new("sms")
    end
  end

  class Currency < T::Enum
    enums do
      GHS = new("ghs")
      USD = new("usd")
      GBP = new("gbp")
      EUR = new("eur")
      CNY = new("cny")
    end
  end

  class DeliveryChannel < T::Enum
    enums do
      EMAIL = new("email")
      SMS = new("sms")
    end
  end

  class FeeLineItemType < T::Enum
    enums do
      FEE = new("fee")
    end
  end

  class FileContentsDeliveryMode < T::Enum
    enums do
      STREAM = new("stream")
      REDIRECT = new("redirect")
    end
  end

  class FileDisposition < T::Enum
    enums do
      ATTACHMENT = new("attachment")
      INLINE = new("inline")
    end
  end

  class FileLinkDeliveryMode < T::Enum
    enums do
      REDIRECT = new("redirect")
      DOWNLOAD = new("download")
      INLINE = new("inline")
    end
  end

  class FileLinkKind < T::Enum
    enums do
      PUBLIC = new("public")
    end
  end

  class FileLinkStatus < T::Enum
    enums do
      ACTIVE = new("active")
      REVOKED = new("revoked")
      EXPIRED = new("expired")
      DISABLED = new("disabled")
    end
  end

  class FileScanStatus < T::Enum
    enums do
      PENDING = new("pending")
      PASSED = new("passed")
      FAILED = new("failed")
      SKIPPED = new("skipped")
    end
  end

  class FileSourceType < T::Enum
    enums do
      DIRECT = new("direct")
      UPLOAD_REQUEST = new("upload_request")
      SERVICE = new("service")
    end
  end

  class FileStatus < T::Enum
    enums do
      UPLOADING = new("uploading")
      PROCESSING = new("processing")
      AVAILABLE = new("available")
      FAILED = new("failed")
      DELETED = new("deleted")
    end
  end

  class FileStorageEncoding < T::Enum
    enums do
      IDENTITY = new("identity")
      BR = new("br")
    end
  end

  class FinancialAccountBankRequestType < T::Enum
    enums do
      BANK_ACCOUNT = new("bank_account")
    end
  end

  class FinancialAccountDoshRequestType < T::Enum
    enums do
      DOSH_ACCOUNT = new("dosh_account")
    end
  end

  class FinancialAccountType < T::Enum
    enums do
      WALLET = new("wallet")
      BANK_ACCOUNT = new("bank_account")
      DOSH_ACCOUNT = new("dosh_account")
    end
  end

  class FinancialAccountWalletRequestType < T::Enum
    enums do
      WALLET = new("wallet")
    end
  end

  class MessageTemplateChannel < T::Enum
    enums do
      SMS = new("sms")
      EMAIL = new("email")
    end
  end

  class MessageTemplateStatus < T::Enum
    enums do
      DRAFT = new("draft")
      PUBLISHED = new("published")
      ARCHIVED = new("archived")
    end
  end

  class MessageTemplateVariableItemType < T::Enum
    enums do
      STRING = new("string")
      NUMBER = new("number")
      INTEGER = new("integer")
      BOOLEAN = new("boolean")
      URL = new("url")
      EMAIL = new("email")
      PHONE = new("phone")
      DATE = new("date")
      DATETIME = new("datetime")
    end
  end

  class MessageTemplateVariableType < T::Enum
    enums do
      STRING = new("string")
      NUMBER = new("number")
      INTEGER = new("integer")
      BOOLEAN = new("boolean")
      URL = new("url")
      EMAIL = new("email")
      PHONE = new("phone")
      DATE = new("date")
      DATETIME = new("datetime")
      ARRAY = new("array")
    end
  end

  class MobileMoneyNetwork < T::Enum
    enums do
      AIRTEL = new("airtel")
      MTN = new("mtn")
      TELECEL = new("telecel")
      VODAFONE = new("vodafone")
    end
  end

  class OTPAlphabetType < T::Enum
    enums do
      NUMERIC = new("numeric")
      ALPHA = new("alpha")
      ALPHANUMERIC = new("alphanumeric")
    end
  end

  class OTPStatus < T::Enum
    enums do
      CANCELED = new("canceled")
      EXPIRED = new("expired")
      PENDING = new("pending")
      PENDING_DELIVERY = new("pending_delivery")
      PENDING_VERIFICATION = new("pending_verification")
      VERIFIED = new("verified")
    end
  end

  class OTPTransmissionSentVia < T::Enum
    enums do
      SMS = new("sms")
    end
  end

  class OTPTransmissionStatus < T::Enum
    enums do
      DELIVERED = new("delivered")
      FAILED = new("failed")
      SUBMITTED = new("submitted")
    end
  end

  class OTPVerificationVerdict < T::Enum
    enums do
      FAIL = new("fail")
      PASS = new("pass")
    end
  end

  class OrderCreatedFromResourceType < T::Enum
    enums do
      PURCHASE_INTENT = new("purchase_intent")
    end
  end

  class OrderDocumentKind < T::Enum
    enums do
      INVOICE = new("invoice")
      RECEIPT = new("receipt")
    end
  end

  class OrderFeeLineItemType < T::Enum
    enums do
      FEE = new("fee")
    end
  end

  class OrderProductLineItemType < T::Enum
    enums do
      PRODUCT = new("product")
    end
  end

  class OrderShippingLineItemType < T::Enum
    enums do
      SHIPPING = new("shipping")
    end
  end

  class OrderStatus < T::Enum
    enums do
      PREPARING = new("preparing")
      REQUIRES_PAYMENT = new("requires_payment")
      PAID = new("paid")
      COMPLETED = new("completed")
      CANCELED = new("canceled")
      EXPIRED = new("expired")
      UNKNOWN = new("unknown")
    end
  end

  class PaymentAttemptStatus < T::Enum
    enums do
      INITIATED = new("initiated")
      EXECUTED = new("executed")
      SUCCEEDED = new("succeeded")
      CANCELED = new("canceled")
      EXPIRED = new("expired")
      FAILED = new("failed")
      UNKNOWN = new("unknown")
    end
  end

  class PaymentConfirmationChannel < T::Enum
    enums do
      SMS = new("sms")
      EMAIL = new("email")
      PUSH = new("push")
    end
  end

  class PaymentMethodDataType < T::Enum
    enums do
      MOBILE_MONEY = new("mobile_money")
    end
  end

  class PaymentMethodTokenizeBaseType < T::Enum
    enums do
      MOBILE_MONEY = new("mobile_money")
    end
  end

  class PaymentMethodType < T::Enum
    enums do
      MOBILE_MONEY = new("mobile_money")
      BANK_ACCOUNT = new("bank_account")
      CARD = new("card")
      MOTITO = new("motito")
    end
  end

  class PaymentNextActionType < T::Enum
    enums do
      CONFIRM_PAYMENT = new("confirm_payment")
      EXECUTE = new("execute")
      REDIRECT = new("redirect")
      AUTHORIZE = new("authorize")
      NONE = new("none")
    end
  end

  class PaymentResultStatus < T::Enum
    enums do
      PENDING = new("pending")
      REQUIRES_CONFIRMATION = new("requires_confirmation")
      PROCESSING = new("processing")
      SUCCEEDED = new("succeeded")
      FAILED = new("failed")
    end
  end

  class PaymentStatus < T::Enum
    enums do
      INITIATED = new("initiated")
      REQUIRES_ACTION = new("requires_action")
      OVERDUE = new("overdue")
      EXECUTED = new("executed")
      PAID = new("paid")
      CANCELED = new("canceled")
      EXPIRED = new("expired")
      FAILED = new("failed")
      UNKNOWN = new("unknown")
    end
  end

  class PayoutStatus < T::Enum
    enums do
      INITIALIZED = new("initialized")
      SCHEDULED = new("scheduled")
      PROCESSING = new("processing")
      EXECUTING = new("executing")
      SUCCEEDED = new("succeeded")
      INVALID = new("invalid")
      CANCELED = new("canceled")
    end
  end

  class ProductLineItemType < T::Enum
    enums do
      PRODUCT = new("product")
    end
  end

  class ProductShipmentInputType < T::Enum
    enums do
      DELIVERY = new("delivery")
      DOWNLOAD = new("download")
      RENDER = new("render")
      STREAM = new("stream")
    end
  end

  class ProductShipmentType < T::Enum
    enums do
      DELIVERY = new("delivery")
      DOWNLOAD = new("download")
      RENDER = new("render")
      SERVICE = new("service")
      STREAM = new("stream")
    end
  end

  class ProductType < T::Enum
    enums do
      PHYSICAL = new("physical")
      DIGITAL = new("digital")
      SERVICE = new("service")
      VOUCHER = new("voucher")
      CUSTOM = new("custom")
      CAUSE = new("cause")
    end
  end

  class PurchaseIntentActivityType < T::Enum
    enums do
      EXPIRED_VIEWED = new("expired_viewed")
      ORDER_CREATED = new("order_created")
      PAYMENT_FAILED = new("payment_failed")
      PAYMENT_STARTED = new("payment_started")
      VIEWED = new("viewed")
    end
  end

  class PurchaseIntentStatus < T::Enum
    enums do
      ACTIVE = new("active")
      EXPIRED = new("expired")
      INACTIVE = new("inactive")
      USED = new("used")
    end
  end

  class RefundReason < T::Enum
    enums do
      REQUESTED_BY_CUSTOMER = new("requested_by_customer")
      DUPLICATE = new("duplicate")
      FRAUDULENT = new("fraudulent")
      ORDER_CANCELED = new("order_canceled")
      ITEM_RETURNED = new("item_returned")
      ITEM_DAMAGED = new("item_damaged")
      ITEM_NOT_RECEIVED = new("item_not_received")
      ITEM_NOT_AS_DESCRIBED = new("item_not_as_described")
      CUSTOM = new("custom")
    end
  end

  class RefundStatus < T::Enum
    enums do
      CANCELED = new("canceled")
      FAILED = new("failed")
      PENDING = new("pending")
      PROCESSING = new("processing")
      SUCCEEDED = new("succeeded")
    end
  end

  class SecretKeyAuthResult < T::Enum
    enums do
      SUCCEEDED = new("succeeded")
      FAILED = new("failed")
    end
  end

  class SecretKeyStatus < T::Enum
    enums do
      ACTIVE = new("active")
      REVOKED = new("revoked")
      EXPIRED = new("expired")
    end
  end

  class SecretKeyTokenType < T::Enum
    enums do
      BEARER = new("bearer")
    end
  end

  class ShippingLineItemType < T::Enum
    enums do
      SHIPPING = new("shipping")
    end
  end

  class TokenizeMobileMoneyPaymentMethodRequestType < T::Enum
    enums do
      MOBILE_MONEY = new("mobile_money")
    end
  end

  class UpdateOrderRequestPaymentMethodDataType < T::Enum
    enums do
      MOBILE_MONEY = new("mobile_money")
    end
  end

  class UploadRequestStatus < T::Enum
    enums do
      PENDING = new("pending")
      UPLOADING = new("uploading")
      FULFILLED = new("fulfilled")
      EXPIRED = new("expired")
      CANCELED = new("canceled")
      FAILED = new("failed")
    end
  end

  class UploadReviewDecision < T::Enum
    enums do
      APPROVED = new("approved")
      REJECTED = new("rejected")
    end
  end

  class UploadReviewType < T::Enum
    enums do
      AUTOMATIC = new("automatic")
      MANUAL = new("manual")
    end
  end

  class WalletType < T::Enum
    enums do
      MOBILE_MONEY = new("mobile_money")
    end
  end
end
