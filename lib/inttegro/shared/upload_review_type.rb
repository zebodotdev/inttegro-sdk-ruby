# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # String-backed values accepted by the Inttegro API for Inttegro::Shared::UploadReviewType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class UploadReviewType < T::Enum
      enums do
        # Serialized wire value: `automatic`.
        # @return [Inttegro::Shared::UploadReviewType]
        AUTOMATIC = new("automatic")
        # Serialized wire value: `manual`.
        # @return [Inttegro::Shared::UploadReviewType]
        MANUAL = new("manual")
      end
    end
  end
end
