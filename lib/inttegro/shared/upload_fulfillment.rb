# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../file/upload_receipt"
require_relative "../upload_request/details"

module Inttegro
  module Shared
    # Typed representation of the upload fulfillment object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] upload_request
    #   Public upload request metadata. Token hashes are not exposed.
    #
    #   Required in the API payload. Wire name: `upload_request`.
    #   @return [Inttegro::UploadRequest::Details]
    #
    # @!attribute [r] file
    #   Value of the `file` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `file`.
    #   @return [Inttegro::File::UploadReceipt]
    class UploadFulfillment < T::Struct
      const :upload_request, Inttegro::UploadRequest::Details
      const :file, Inttegro::File::UploadReceipt
    end
  end
end
