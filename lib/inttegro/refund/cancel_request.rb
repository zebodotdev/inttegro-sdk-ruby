# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "request_meta"

module Inttegro
  class Refund
    # Typed representation of the cancel request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] refund_id
    #   Refund to cancel before processing begins.
    #
    #   Required in the API payload. Wire name: `refund_id`.
    #   @return [String]
    #
    # @!attribute [r] request_meta
    #   Value of the `request_meta` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `request_meta`.
    #   @return [Inttegro::Refund::RequestMeta, nil]
    class CancelRequest < T::Struct
      const :refund_id, String
      const :request_meta, T.nilable(Inttegro::Refund::RequestMeta), default: nil
    end
  end
end
