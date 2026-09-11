# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Payment status
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class ResultStatus < T::Enum
      enums do
        # Serialized wire value: `pending`.
        # @return [Inttegro::Payment::ResultStatus]
        PENDING = new("pending")
        # Serialized wire value: `requires_confirmation`.
        # @return [Inttegro::Payment::ResultStatus]
        REQUIRES_CONFIRMATION = new("requires_confirmation")
        # Serialized wire value: `processing`.
        # @return [Inttegro::Payment::ResultStatus]
        PROCESSING = new("processing")
        # Serialized wire value: `succeeded`.
        # @return [Inttegro::Payment::ResultStatus]
        SUCCEEDED = new("succeeded")
        # Serialized wire value: `failed`.
        # @return [Inttegro::Payment::ResultStatus]
        FAILED = new("failed")
      end
    end
  end
end
