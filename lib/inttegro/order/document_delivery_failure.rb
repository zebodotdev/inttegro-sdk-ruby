# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/delivery_channel"

module Inttegro
  class Order
    # Chime delivery failure for one channel.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] channel
    #   Delivery channel.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `channel`.
    #   @return [Inttegro::Shared::DeliveryChannel, nil]
    #
    # @!attribute [r] error
    #   Provider or Chime error for this channel.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `error`.
    #   @return [String, nil]
    class DocumentDeliveryFailure < T::Struct
      const :channel, T.nilable(Inttegro::Shared::DeliveryChannel), default: nil
      const :error, T.nilable(String), default: nil
    end
  end
end
