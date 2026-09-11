# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "transport"

module Inttegro
  class Chime
    # Typed representation of the saved customer recipient object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] customer_id
    #   Value of the `customer_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `customer_id`.
    #   @return [String]
    #
    # @!attribute [r] transport
    #   Value of the `transport` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `transport`.
    #   @return [Inttegro::Chime::Transport]
    class SavedCustomerRecipient < T::Struct
      const :customer_id, String
      const :transport, Inttegro::Chime::Transport
    end
  end
end
