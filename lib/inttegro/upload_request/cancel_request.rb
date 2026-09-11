# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../file/actor_input"

module Inttegro
  class UploadRequest
    # Typed representation of the cancel request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] canceled_by
    #   Value of the `canceled_by` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `canceled_by`.
    #   @return [Inttegro::File::ActorInput, nil]
    class CancelRequest < T::Struct
      const :id, String
      const :canceled_by, T.nilable(Inttegro::File::ActorInput), default: nil
    end
  end
end
