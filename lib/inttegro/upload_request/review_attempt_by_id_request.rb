# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/upload_review_decision"
require_relative "review_reason_input"

module Inttegro
  class UploadRequest
    # Typed representation of the review attempt by id request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] attempt_id
    #   Value of the `attempt_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `attempt_id`.
    #   @return [String]
    #
    # @!attribute [r] decision
    #   Value of the `decision` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `decision`.
    #   @return [Inttegro::Shared::UploadReviewDecision]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
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
    #   @return [Array<Inttegro::UploadRequest::ReviewReasonInput>, nil]
    class ReviewAttemptByIDRequest < T::Struct
      const :attempt_id, String
      const :decision, Inttegro::Shared::UploadReviewDecision
      const :id, String
      const :public_message, T.nilable(String), default: nil
      const :reasons, T.nilable(T::Array[Inttegro::UploadRequest::ReviewReasonInput]), default: nil
    end
  end
end
