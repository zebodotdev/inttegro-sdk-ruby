# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "status"

module Inttegro
  class FileLink
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] file_id
    #   Value of the `file_id` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `file_id`.
    #   @return [String, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [Inttegro::FileLink::Status, nil]
    #
    # @!attribute [r] page_number
    #   Value of the `page_number` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_number`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] page_size
    #   Value of the `page_size` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page_size`.
    #   @return [Integer, nil]
    class PageRequest < T::Struct
      const :file_id, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::FileLink::Status), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
    end
  end
end
