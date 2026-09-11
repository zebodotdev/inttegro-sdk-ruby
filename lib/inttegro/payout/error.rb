# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payout
    # Public failure details when execution fails
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] cause
    #   Value of the `cause` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `cause`.
    #   @return [String]
    #
    # @!attribute [r] message
    #   Value of the `message` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `message`.
    #   @return [String]
    #
    # @!attribute [r] occurred_at
    #   Value of the `occurred_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `occurred_at`.
    #   @return [Time]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [String]
    class Error < T::Struct
      const :cause, String
      const :message, String
      const :occurred_at, Time
      const :type, String
    end
  end
end
