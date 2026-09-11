# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "channel"
require_relative "status"

module Inttegro
  class MessageTemplate
    # Typed representation of the page request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] page
    #   Value of the `page` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `page`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] size
    #   Value of the `size` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `size`.
    #   @return [Integer, nil]
    #
    # @!attribute [r] status
    #   Value of the `status` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `status`.
    #   @return [Inttegro::MessageTemplate::Status, nil]
    #
    # @!attribute [r] channel
    #   Value of the `channel` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `channel`.
    #   @return [Inttegro::MessageTemplate::Channel, nil]
    #
    # @!attribute [r] purpose
    #   Value of the `purpose` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purpose`.
    #   @return [String, nil]
    #
    # @!attribute [r] locale
    #   Value of the `locale` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `locale`.
    #   @return [String, nil]
    class PageRequest < T::Struct
      const :page, T.nilable(Integer), default: nil
      const :size, T.nilable(Integer), default: nil
      const :status, T.nilable(Inttegro::MessageTemplate::Status), default: nil
      const :channel, T.nilable(Inttegro::MessageTemplate::Channel), default: nil
      const :purpose, T.nilable(String), default: nil
      const :locale, T.nilable(String), default: nil
    end
  end
end
