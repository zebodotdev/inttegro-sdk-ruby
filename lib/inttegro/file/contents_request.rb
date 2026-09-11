# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "contents_delivery_mode"
require_relative "disposition"

module Inttegro
  class File
    # Typed representation of the contents request object in the Inttegro API.
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
    #   Required in the API payload. Wire name: `file_id`.
    #   @return [String]
    #
    # @!attribute [r] disposition
    #   Value of the `disposition` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `disposition`.
    #   @return [Inttegro::File::Disposition, nil]
    #
    # @!attribute [r] delivery
    #   Value of the `delivery` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `delivery`.
    #   @return [Inttegro::File::ContentsDeliveryMode, nil]
    class ContentsRequest < T::Struct
      const :file_id, String
      const :disposition, T.nilable(Inttegro::File::Disposition), default: nil
      const :delivery, T.nilable(Inttegro::File::ContentsDeliveryMode), default: nil
    end
  end
end
