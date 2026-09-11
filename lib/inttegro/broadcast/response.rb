# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "creation_detail"

module Inttegro
  module Broadcast
    # Typed representation of the response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] broadcast
    #   Value of the `broadcast` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `broadcast`.
    #   @return [Inttegro::Broadcast::CreationDetail, nil]
    class Response < T::Struct
      const :broadcast, T.nilable(Inttegro::Broadcast::CreationDetail), default: nil
    end
  end
end
