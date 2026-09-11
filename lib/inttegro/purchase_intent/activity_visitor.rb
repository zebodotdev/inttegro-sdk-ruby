# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PurchaseIntent
    # Typed representation of the activity visitor object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] browser
    #   Value of the `browser` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `browser`.
    #   @return [String, nil]
    #
    # @!attribute [r] city
    #   Value of the `city` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `city`.
    #   @return [String, nil]
    #
    # @!attribute [r] country
    #   Value of the `country` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `country`.
    #   @return [String, nil]
    #
    # @!attribute [r] device
    #   Value of the `device` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `device`.
    #   @return [String, nil]
    #
    # @!attribute [r] ip_address
    #   Request IP address when retained for the activity type
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `ip_address`.
    #   @return [String, nil]
    #
    # @!attribute [r] os
    #   Value of the `os` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `os`.
    #   @return [String, nil]
    #
    # @!attribute [r] region
    #   Value of the `region` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `region`.
    #   @return [String, nil]
    #
    # @!attribute [r] session_id
    #   Value of the `session_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `session_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] timezone
    #   Value of the `timezone` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `timezone`.
    #   @return [String, nil]
    #
    # @!attribute [r] user_agent
    #   Value of the `user_agent` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `user_agent`.
    #   @return [String, nil]
    #
    # @!attribute [r] visitor_id
    #   Value of the `visitor_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `visitor_id`.
    #   @return [String, nil]
    class ActivityVisitor < T::Struct
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
  end
end
