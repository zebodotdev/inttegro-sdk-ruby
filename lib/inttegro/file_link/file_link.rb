# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "access"
require_relative "actor"
require_relative "delivery"
require_relative "kind"
require_relative "status"

module Inttegro
  # Public file link metadata. Token hashes and provider URLs are not exposed.
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] id
  #   Value of the `id` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] kind
  #   Value of the `kind` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `kind`.
  #   @return [Inttegro::FileLink::Kind]
  #
  # @!attribute [r] file_id
  #   Value of the `file_id` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `file_id`.
  #   @return [String]
  #
  # @!attribute [r] purpose
  #   Value of the `purpose` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `purpose`.
  #   @return [String]
  #
  # @!attribute [r] status
  #   Value of the `status` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `status`.
  #   @return [Inttegro::FileLink::Status]
  #
  # @!attribute [r] active
  #   Value of the `active` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `active`.
  #   @return [Boolean]
  #
  # @!attribute [r] delivery
  #   Value of the `delivery` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `delivery`.
  #   @return [Inttegro::FileLink::Delivery]
  #
  # @!attribute [r] access
  #   Value of the `access` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `access`.
  #   @return [Inttegro::FileLink::Access]
  #
  # @!attribute [r] created_by
  #   Value of the `created_by` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `created_by`.
  #   @return [Inttegro::FileLink::Actor]
  #
  # @!attribute [r] revoked_by
  #   Value of the `revoked_by` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `revoked_by`.
  #   @return [Inttegro::FileLink::Actor, nil]
  #
  # @!attribute [r] custom_data
  #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
  #   collection rather than a raw map.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
  #   @return [Hash{String => String}, nil]
  #
  # @!attribute [r] metadata
  #   System-managed string metadata attached to a file resource.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `metadata`.
  #   @return [Hash{String => String}, nil]
  #
  # @!attribute [r] created_at
  #   Value of the `created_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `created_at`.
  #   @return [Time]
  #
  # @!attribute [r] updated_at
  #   Value of the `updated_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `updated_at`.
  #   @return [Time]
  #
  # @!attribute [r] expires_at
  #   Value of the `expires_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `expires_at`.
  #   @return [Time]
  #
  # @!attribute [r] revoked_at
  #   Value of the `revoked_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `revoked_at`.
  #   @return [Time, nil]
  class FileLink
    const :id, String
    const :kind, Inttegro::FileLink::Kind
    const :file_id, String
    const :purpose, String
    const :status, Inttegro::FileLink::Status
    const :active, T::Boolean
    const :delivery, Inttegro::FileLink::Delivery
    const :access, Inttegro::FileLink::Access
    const :created_by, Inttegro::FileLink::Actor
    const :revoked_by, T.nilable(Inttegro::FileLink::Actor), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :metadata, T.nilable(T::Hash[String, String]), default: nil
    const :created_at, Time
    const :updated_at, Time
    const :expires_at, Time
    const :revoked_at, T.nilable(Time), default: nil
  end
end
