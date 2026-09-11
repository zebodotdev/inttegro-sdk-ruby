# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "chime"

module Inttegro
  class Chime
    # Typed representation of the page object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] number
    #   Page number returned
    #
    #   Required in the API payload. Wire name: `number`.
    #   @return [Integer]
    #
    # @!attribute [r] size
    #   Page size returned
    #
    #   Required in the API payload. Wire name: `size`.
    #   @return [Integer]
    #
    # @!attribute [r] chimes
    #   Chimes in this page
    #
    #   Required in the API payload. Wire name: `chimes`.
    #   @return [Array<Inttegro::Chime>]
    class Page < T::Struct
      const :number, Integer
      const :size, Integer
      const :chimes, T::Array[Inttegro::Chime]
    end
  end
end
