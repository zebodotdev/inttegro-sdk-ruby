# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # Typed representation of the email mailbox object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Optional display name
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] address
    #   Email address
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `address`.
    #   @return [String, nil]
    class EmailMailbox < T::Struct
      const :name, T.nilable(String), default: nil
      const :address, T.nilable(String), default: nil
    end
  end
end
