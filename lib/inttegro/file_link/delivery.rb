# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "delivery_mode"

module Inttegro
  class FileLink
    # Typed representation of the delivery object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] mode
    #   Value of the `mode` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `mode`.
    #   @return [Inttegro::FileLink::DeliveryMode, nil]
    #
    # @!attribute [r] filename
    #   Value of the `filename` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `filename`.
    #   @return [String, nil]
    #
    # @!attribute [r] content_type
    #   Value of the `content_type` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `content_type`.
    #   @return [String, nil]
    #
    # @!attribute [r] disposition
    #   Value of the `disposition` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `disposition`.
    #   @return [String, nil]
    class Delivery < T::Struct
      const :mode, T.nilable(Inttegro::FileLink::DeliveryMode), default: nil
      const :filename, T.nilable(String), default: nil
      const :content_type, T.nilable(String), default: nil
      const :disposition, T.nilable(String), default: nil
    end
  end
end
