# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "status"
require_relative "token_type"

module Inttegro
  # Public secret key metadata. The bearer token is never returned by read or mutation
  # endpoints.
  #
  # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
  # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
  # field names and serialized enum values.
  #
  # @api public
  #
  # @!attribute [r] id
  #   Application-scoped secret key identifier.
  #
  #   Required in the API payload. Wire name: `id`.
  #   @return [String]
  #
  # @!attribute [r] label
  #   Optional human-readable label for the secret key.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
  #   @return [String, nil]
  #
  # @!attribute [r] token_type
  #   Value of the `token_type` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `token_type`.
  #   @return [Inttegro::SecretKey::TokenType]
  #
  # @!attribute [r] issued_at
  #   Value of the `issued_at` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `issued_at`.
  #   @return [Time]
  #
  # @!attribute [r] updated_at
  #   Omitted until the label is changed.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `updated_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] expires_at
  #   Omitted for keys without a fixed expiry.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] status
  #   Value of the `status` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `status`.
  #   @return [Inttegro::SecretKey::Status]
  #
  # @!attribute [r] active
  #   Value of the `active` field in the Inttegro API payload.
  #
  #   Required in the API payload. Wire name: `active`.
  #   @return [Boolean]
  #
  # @!attribute [r] revoked_at
  #   Omitted until the key is revoked.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `revoked_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] last_used_at
  #   Most recent recorded authentication when available; otherwise omitted.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `last_used_at`.
  #   @return [Time, nil]
  #
  # @!attribute [r] usage_count
  #   Number of recorded authentications when available; omitted when zero.
  #
  #   Optional in the API payload; omitted values default to `nil`. Wire name: `usage_count`.
  #   @return [Integer, nil]
  class SecretKey
    const :id, String
    const :label, T.nilable(String), default: nil
    const :token_type, Inttegro::SecretKey::TokenType
    const :issued_at, Time
    const :updated_at, T.nilable(Time), default: nil
    const :expires_at, T.nilable(Time), default: nil
    const :status, Inttegro::SecretKey::Status
    const :active, T::Boolean
    const :revoked_at, T.nilable(Time), default: nil
    const :last_used_at, T.nilable(Time), default: nil
    const :usage_count, T.nilable(Integer), default: nil
  end
end
