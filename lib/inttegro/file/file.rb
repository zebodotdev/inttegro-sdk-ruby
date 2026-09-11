# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "actor"
require_relative "delivery"
require_relative "latest_error"
require_relative "media"
require_relative "public_storage"
require_relative "scan_status"
require_relative "source"
require_relative "status"

module Inttegro
  # Public file metadata. Storage provider details, object keys, and idempotency internals are
  # not exposed.
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
  #   @return [Inttegro::File::Status]
  #
  # @!attribute [r] scan_status
  #   Value of the `scan_status` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `scan_status`.
  #   @return [Inttegro::File::ScanStatus]
  #
  # @!attribute [r] name
  #   Value of the `name` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
  #   @return [String, nil]
  #
  # @!attribute [r] filename
  #   Value of the `filename` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `filename`.
  #   @return [String, nil]
  #
  # @!attribute [r] content_type
  #   Value of the `content_type` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `content_type`.
  #   @return [String]
  #
  # @!attribute [r] size
  #   Original byte size.
  #
  #   Required in the API payload. Wire name: `size`.
  #   @return [Integer]
  #
  # @!attribute [r] checksum_sha256
  #   Value of the `checksum_sha256` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `checksum_sha256`.
  #   @return [String]
  #
  # @!attribute [r] created_by
  #   Value of the `created_by` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `created_by`.
  #   @return [Inttegro::File::Actor]
  #
  # @!attribute [r] source
  #   Value of the `source` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `source`.
  #   @return [Inttegro::File::Source]
  #
  # @!attribute [r] media
  #   Value of the `media` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `media`.
  #   @return [Inttegro::File::Media, nil]
  #
  # @!attribute [r] storage
  #   Value of the `storage` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `storage`.
  #   @return [Inttegro::File::PublicStorage]
  #
  # @!attribute [r] delivery
  #   Purpose-authorized public delivery metadata for browser-rendered assets. Callers should
  #   store file IDs as canonical references and treat these URLs as render URLs.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `delivery`.
  #   @return [Inttegro::File::Delivery, nil]
  #
  # @!attribute [r] latest_error
  #   Value of the `latest_error` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `latest_error`.
  #   @return [Inttegro::File::LatestError, nil]
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
  # @!attribute [r] available_at
  #   Value of the `available_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `available_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] expires_at
  #   Value of the `expires_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_at`.
  #   @return [Time, nil]
  class File
    const :id, String
    const :purpose, String
    const :status, Inttegro::File::Status
    const :scan_status, Inttegro::File::ScanStatus
    const :name, T.nilable(String), default: nil
    const :filename, T.nilable(String), default: nil
    const :content_type, String
    const :size, Integer
    const :checksum_sha256, String
    const :created_by, Inttegro::File::Actor
    const :source, Inttegro::File::Source
    const :media, T.nilable(Inttegro::File::Media), default: nil
    const :storage, Inttegro::File::PublicStorage
    const :delivery, T.nilable(Inttegro::File::Delivery), default: nil
    const :latest_error, T.nilable(Inttegro::File::LatestError), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :metadata, T.nilable(T::Hash[String, String]), default: nil
    const :created_at, Time
    const :updated_at, Time
    const :available_at, T.nilable(Time), default: nil
    const :expires_at, T.nilable(Time), default: nil
  end
end
