# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Typed representation of the activity attribution object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] campaign
    #   Value of the `campaign` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `campaign`.
    #   @return [String, nil]
    #
    # @!attribute [r] channel
    #   Value of the `channel` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `channel`.
    #   @return [String, nil]
    #
    # @!attribute [r] content
    #   Value of the `content` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `content`.
    #   @return [String, nil]
    #
    # @!attribute [r] landing_url
    #   Value of the `landing_url` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `landing_url`.
    #   @return [String, nil]
    #
    # @!attribute [r] medium
    #   Value of the `medium` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `medium`.
    #   @return [String, nil]
    #
    # @!attribute [r] referrer
    #   Value of the `referrer` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `referrer`.
    #   @return [String, nil]
    #
    # @!attribute [r] referrer_host
    #   Value of the `referrer_host` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `referrer_host`.
    #   @return [String, nil]
    #
    # @!attribute [r] source
    #   Value of the `source` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `source`.
    #   @return [String, nil]
    #
    # @!attribute [r] term
    #   Value of the `term` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `term`.
    #   @return [String, nil]
    class ActivityAttribution < T::Struct
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
  end
end
