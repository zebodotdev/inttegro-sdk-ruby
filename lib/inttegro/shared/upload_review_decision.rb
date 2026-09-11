# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # String-backed values accepted by the Inttegro API for
    # Inttegro::Shared::UploadReviewDecision.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class UploadReviewDecision < T::Enum
      enums do
        # Serialized wire value: `approved`.
        # @return [Inttegro::Shared::UploadReviewDecision]
        APPROVED = new("approved")
        # Serialized wire value: `rejected`.
        # @return [Inttegro::Shared::UploadReviewDecision]
        REJECTED = new("rejected")
      end
    end
  end
end
