# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "source_type"

module Inttegro
  class File
    # Typed representation of the source object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `type`.
    #   @return [Inttegro::File::SourceType, nil]
    #
    # @!attribute [r] service
    #   Value of the `service` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `service`.
    #   @return [String, nil]
    #
    # @!attribute [r] upload_request_id
    #   Value of the `upload_request_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `upload_request_id`.
    #   @return [String, nil]
    class Source < T::Struct
      const :type, T.nilable(Inttegro::File::SourceType), default: nil
      const :service, T.nilable(String), default: nil
      const :upload_request_id, T.nilable(String), default: nil
    end
  end
end
