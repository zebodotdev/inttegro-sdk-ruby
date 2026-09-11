# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "create_line_item"
require_relative "reason"
require_relative "request_meta"

module Inttegro
  class Refund
    # Typed representation of the create request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] line_items
    #   Value of the `line_items` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `line_items`.
    #   @return [Array<Inttegro::Refund::CreateLineItem>]
    #
    # @!attribute [r] order_id
    #   Paid order to refund.
    #
    #   Required in the API payload. Wire name: `order_id`.
    #   @return [String]
    #
    # @!attribute [r] reason
    #   Value of the `reason` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `reason`.
    #   @return [Inttegro::Refund::Reason]
    #
    # @!attribute [r] reason_details
    #   Overall explanation. Required when `reason` is `custom`.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason_details`.
    #   @return [String, nil]
    #
    # @!attribute [r] reference
    #   Your reconciliation reference.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] request_meta
    #   Value of the `request_meta` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `request_meta`.
    #   @return [Inttegro::Refund::RequestMeta, nil]
    class CreateRequest < T::Struct
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :line_items, T::Array[Inttegro::Refund::CreateLineItem]
      const :order_id, String
      const :reason, Inttegro::Refund::Reason
      const :reason_details, T.nilable(String), default: nil
      const :reference, T.nilable(String), default: nil
      const :request_meta, T.nilable(Inttegro::Refund::RequestMeta), default: nil
    end
  end
end
