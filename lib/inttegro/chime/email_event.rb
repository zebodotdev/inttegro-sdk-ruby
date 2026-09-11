# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # Typed representation of the email event object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] bounce_sub_type
    #   Value of the `bounce_sub_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `bounce_sub_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] bounce_type
    #   Value of the `bounce_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `bounce_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] complaint_sub_type
    #   Value of the `complaint_sub_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `complaint_sub_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] occurred_at
    #   Value of the `occurred_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `occurred_at`.
    #   @return [Time]
    #
    # @!attribute [r] provider
    #   Value of the `provider` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `provider`.
    #   @return [String]
    #
    # @!attribute [r] provider_message_id
    #   Value of the `provider_message_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `provider_message_id`.
    #   @return [String]
    #
    # @!attribute [r] reason
    #   Value of the `reason` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason`.
    #   @return [String, nil]
    #
    # @!attribute [r] reason_code
    #   Value of the `reason_code` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reason_code`.
    #   @return [String, nil]
    #
    # @!attribute [r] recipient
    #   Value of the `recipient` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `recipient`.
    #   @return [String, nil]
    #
    # @!attribute [r] source
    #   Value of the `source` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `source`.
    #   @return [String, nil]
    #
    # @!attribute [r] suppress_recipient
    #   Value of the `suppress_recipient` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `suppress_recipient`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] temporary
    #   Value of the `temporary` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `temporary`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [String]
    class EmailEvent < T::Struct
      const :bounce_sub_type, T.nilable(String), default: nil
      const :bounce_type, T.nilable(String), default: nil
      const :complaint_sub_type, T.nilable(String), default: nil
      const :id, String
      const :occurred_at, Time
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
  end
end
