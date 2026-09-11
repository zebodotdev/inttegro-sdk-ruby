# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "chime"

module Inttegro
  class Chime
    # Response containing chime details
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] chime
    #   A notification sent to one recipient
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `chime`.
    #   @return [Inttegro::Chime, nil]
    class Response < T::Struct
      const :chime, T.nilable(Inttegro::Chime), default: nil
    end
  end
end
