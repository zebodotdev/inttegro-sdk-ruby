# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class UploadRequest
    # String-backed values accepted by the Inttegro API for Inttegro::UploadRequest::Status.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `pending`.
        # @return [Inttegro::UploadRequest::Status]
        PENDING = new("pending")
        # Serialized wire value: `uploading`.
        # @return [Inttegro::UploadRequest::Status]
        UPLOADING = new("uploading")
        # Serialized wire value: `fulfilled`.
        # @return [Inttegro::UploadRequest::Status]
        FULFILLED = new("fulfilled")
        # Serialized wire value: `expired`.
        # @return [Inttegro::UploadRequest::Status]
        EXPIRED = new("expired")
        # Serialized wire value: `canceled`.
        # @return [Inttegro::UploadRequest::Status]
        CANCELED = new("canceled")
        # Serialized wire value: `failed`.
        # @return [Inttegro::UploadRequest::Status]
        FAILED = new("failed")
      end
    end
  end
end
