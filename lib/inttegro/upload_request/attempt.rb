# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "latest_error"
require_relative "review"

module Inttegro
  class UploadRequest
    # Typed representation of the attempt object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] attempted_at
    #   Value of the `attempted_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `attempted_at`.
    #   @return [Time]
    #
    # @!attribute [r] content_type
    #   Value of the `content_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `content_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] declared_size
    #   Value of the `declared_size` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `declared_size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] error
    #   Value of the `error` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `error`.
    #   @return [Inttegro::UploadRequest::LatestError, nil]
    #
    # @!attribute [r] failed_at
    #   Value of the `failed_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `failed_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] file_id
    #   Value of the `file_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `file_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] filename
    #   Value of the `filename` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `filename`.
    #   @return [String, nil]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] ordinal
    #   Value of the `ordinal` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `ordinal`.
    #   @return [Integer]
    #
    # @!attribute [r] review
    #   Value of the `review` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `review`.
    #   @return [Inttegro::UploadRequest::Review, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `status`.
    #   @return [String]
    #
    # @!attribute [r] succeeded_at
    #   Value of the `succeeded_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `succeeded_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] upload_request_id
    #   Value of the `upload_request_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `upload_request_id`.
    #   @return [String]
    class Attempt < T::Struct
      const :attempted_at, Time
      const :content_type, T.nilable(String), default: nil
      const :declared_size, T.nilable(Integer), default: nil
      const :error, T.nilable(Inttegro::UploadRequest::LatestError), default: nil
      const :failed_at, T.nilable(Time), default: nil
      const :file_id, T.nilable(String), default: nil
      const :filename, T.nilable(String), default: nil
      const :id, String
      const :ordinal, Integer
      const :review, T.nilable(Inttegro::UploadRequest::Review), default: nil
      const :status, String
      const :succeeded_at, T.nilable(Time), default: nil
      const :upload_request_id, String
    end
  end
end
