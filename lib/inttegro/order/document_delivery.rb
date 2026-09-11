# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/delivery_channel"
require_relative "document_delivery_attempt"
require_relative "document_delivery_failure"
require_relative "document_kind"

module Inttegro
  class Order
    # Delivery result for one hosted order document link.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] deliveries
    #   Chime messages that were accepted for delivery.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `deliveries`.
    #   @return [Array<Inttegro::Order::DocumentDeliveryAttempt>, nil]
    #
    # @!attribute [r] document_kind
    #   Hosted document that was delivered.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `document_kind`.
    #   @return [Inttegro::Order::DocumentKind, nil]
    #
    # @!attribute [r] document_url
    #   Hosted invoice or receipt URL sent to the customer. Receipt URLs use the hosted receipt
    #   path, not the invoice PDF path.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `document_url`.
    #   @return [String, nil]
    #
    # @!attribute [r] failed_channels
    #   Channels that failed to send.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `failed_channels`.
    #   @return [Array<Inttegro::Shared::DeliveryChannel>, nil]
    #
    # @!attribute [r] failures
    #   Per-channel delivery failures.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `failures`.
    #   @return [Array<Inttegro::Order::DocumentDeliveryFailure>, nil]
    #
    # @!attribute [r] sent_channels
    #   Channels accepted by Chime.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sent_channels`.
    #   @return [Array<Inttegro::Shared::DeliveryChannel>, nil]
    class DocumentDelivery < T::Struct
      const :deliveries, T.nilable(T::Array[Inttegro::Order::DocumentDeliveryAttempt]), default: nil
      const :document_kind, T.nilable(Inttegro::Order::DocumentKind), default: nil
      const :document_url, T.nilable(String), default: nil
      const :failed_channels, T.nilable(T::Array[Inttegro::Shared::DeliveryChannel]), default: nil
      const :failures, T.nilable(T::Array[Inttegro::Order::DocumentDeliveryFailure]), default: nil
      const :sent_channels, T.nilable(T::Array[Inttegro::Shared::DeliveryChannel]), default: nil
    end
  end
end
