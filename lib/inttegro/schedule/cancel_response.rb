# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "cancel_detail"

module Inttegro
  module Schedule
    # Typed representation of the cancel response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] scheduled_chime
    #   Value of the `scheduled_chime` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `scheduled_chime`.
    #   @return [Inttegro::Schedule::CancelDetail, nil]
    class CancelResponse < T::Struct
      const :scheduled_chime, T.nilable(Inttegro::Schedule::CancelDetail), default: nil
    end
  end
end
