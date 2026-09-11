# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "status"

module Inttegro
  class File
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] purpose
    #   Value of the `purpose` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purpose`.
    #   @return [String, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [Inttegro::File::Status, nil]
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
    #
    # @!attribute [r] created_after
    #   Value of the `created_after` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `created_after`.
    #   @return [Time, nil]
    #
    # @!attribute [r] created_before
    #   Value of the `created_before` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `created_before`.
    #   @return [Time, nil]
    class PageRequest < T::Struct
      const :purpose, T.nilable(String), default: nil
      const :status, T.nilable(Inttegro::File::Status), default: nil
      const :page_number, T.nilable(Integer), default: nil
      const :page_size, T.nilable(Integer), default: nil
      const :created_after, T.nilable(Time), default: nil
      const :created_before, T.nilable(Time), default: nil
    end
  end
end
