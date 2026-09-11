# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "upload_request"

module Inttegro
  class UploadRequest
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Value of the `number` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] size
    #   Value of the `size` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    #
    # @!attribute [r] upload_requests
    #   Value of the `upload_requests` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `upload_requests`.
    #   @return [Array<Inttegro::UploadRequest>]
    class Page < T::Struct
      const :number, Integer
      const :size, Integer
      const :upload_requests, T::Array[Inttegro::UploadRequest]
    end
  end
end
