# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "review_attempt_by_id_request"
require_relative "review_attempt_by_ordinal_request"

module Inttegro
  class UploadRequest
    # Typed representation of the review attempt request object in the Inttegro API.
    #
    # @api public
    # @return [Inttegro::UploadRequest::ReviewAttemptByIDRequest, Inttegro::UploadRequest::ReviewAttemptByOrdinalRequest]
    ReviewAttemptRequest = T.type_alias { T.any(Inttegro::UploadRequest::ReviewAttemptByIDRequest, Inttegro::UploadRequest::ReviewAttemptByOrdinalRequest) }
  end
end
