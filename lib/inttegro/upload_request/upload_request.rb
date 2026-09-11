# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../file/party"
require_relative "../file/resource"
require_relative "actor"
require_relative "attempts"
require_relative "constraints"
require_relative "display"
require_relative "latest_error"
require_relative "status"

module Inttegro
  # Public upload request metadata. Token hashes are not exposed.
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
  #   @return [Inttegro::UploadRequest::Status]
  #
  # @!attribute [r] active
  #   Value of the `active` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `active`.
  #   @return [Boolean]
  #
  # @!attribute [r] file_id
  #   Value of the `file_id` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `file_id`.
  #   @return [String, nil]
  #
  # @!attribute [r] upload_url
  #   Public capability URL returned when available. Treat as bearer-secret material.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `upload_url`.
  #   @return [String, nil]
  #
  # @!attribute [r] constraints
  #   Value of the `constraints` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `constraints`.
  #   @return [Inttegro::UploadRequest::Constraints]
  #
  # @!attribute [r] display_data
  #   Value of the `display` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `display`.
  #   @return [Inttegro::UploadRequest::Display]
  #
  # @!attribute [r] subject
  #   Value of the `subject` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `subject`.
  #   @return [Inttegro::File::Party]
  #
  # @!attribute [r] recipient
  #   Value of the `recipient` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `recipient`.
  #   @return [Inttegro::File::Party]
  #
  # @!attribute [r] resource
  #   Value of the `resource` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `resource`.
  #   @return [Inttegro::File::Resource]
  #
  # @!attribute [r] requester
  #   Value of the `requester` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `requester`.
  #   @return [Inttegro::UploadRequest::Actor]
  #
  # @!attribute [r] attempts
  #   Value of the `attempts` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `attempts`.
  #   @return [Inttegro::UploadRequest::Attempts]
  #
  # @!attribute [r] latest_error
  #   Value of the `latest_error` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `latest_error`.
  #   @return [Inttegro::UploadRequest::LatestError, nil]
  #
  # @!attribute [r] canceled_by
  #   Value of the `canceled_by` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `canceled_by`.
  #   @return [Inttegro::UploadRequest::Actor, nil]
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
  # @!attribute [r] uploading_at
  #   Value of the `uploading_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `uploading_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] fulfilled_at
  #   Value of the `fulfilled_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `fulfilled_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] expired_at
  #   Value of the `expired_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `expired_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] canceled_at
  #   Value of the `canceled_at` field in the Inttegro API payload.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `canceled_at`.
  #   @return [Time, nil]
  class UploadRequest
    const :id, String
    const :purpose, String
    const :status, Inttegro::UploadRequest::Status
    const :active, T::Boolean
    const :file_id, T.nilable(String), default: nil
    const :upload_url, T.nilable(String), default: nil
    const :constraints, Inttegro::UploadRequest::Constraints
    const :display_data, Inttegro::UploadRequest::Display, name: "display"
    const :subject, Inttegro::File::Party
    const :recipient, Inttegro::File::Party
    const :resource, Inttegro::File::Resource
    const :requester, Inttegro::UploadRequest::Actor
    const :attempts, Inttegro::UploadRequest::Attempts
    const :latest_error, T.nilable(Inttegro::UploadRequest::LatestError), default: nil
    const :canceled_by, T.nilable(Inttegro::UploadRequest::Actor), default: nil
    const :custom_data, T.nilable(T::Hash[String, String]), default: nil
    const :metadata, T.nilable(T::Hash[String, String]), default: nil
    const :created_at, Time
    const :updated_at, Time
    const :expires_at, Time
    const :uploading_at, T.nilable(Time), default: nil
    const :fulfilled_at, T.nilable(Time), default: nil
    const :expired_at, T.nilable(Time), default: nil
    const :canceled_at, T.nilable(Time), default: nil
  end
end
