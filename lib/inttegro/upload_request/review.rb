# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/upload_review_decision"
require_relative "../shared/upload_review_type"
require_relative "review_reason"

module Inttegro
  class UploadRequest
    # Typed representation of the review object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] decision
    #   Value of the `decision` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `decision`.
    #   @return [Inttegro::Shared::UploadReviewDecision]
    #
    # @!attribute [r] file_id
    #   Value of the `file_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `file_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] public_message
    #   Value of the `public_message` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `public_message`.
    #   @return [String, nil]
    #
    # @!attribute [r] reasons
    #   Value of the `reasons` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reasons`.
    #   @return [Array<Inttegro::UploadRequest::ReviewReason>, nil]
    #
    # @!attribute [r] reviewed_at
    #   Value of the `reviewed_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `reviewed_at`.
    #   @return [Time]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Shared::UploadReviewType]
    class Review < T::Struct
      const :created_at, Time
      const :decision, Inttegro::Shared::UploadReviewDecision
      const :file_id, T.nilable(String), default: nil
      const :public_message, T.nilable(String), default: nil
      const :reasons, T.nilable(T::Array[Inttegro::UploadRequest::ReviewReason]), default: nil
      const :reviewed_at, Time
      const :type, Inttegro::Shared::UploadReviewType
    end
  end
end
