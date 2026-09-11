# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/error_payload"
require_relative "customer"

module Inttegro
  class Customer
    # Typed representation of the response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] customer
    #   Value of the `customer` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `customer`.
    #   @return [Inttegro::Customer, nil]
    #
    # @!attribute [r] error
    #   Standard error response structure returned by all API endpoints. Provides machine-readable
    #   codes, human-readable messages, and actionable guidance for resolution.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `error`.
    #   @return [Inttegro::Shared::ErrorPayload, nil]
    class Response < T::Struct
      const :customer, T.nilable(Inttegro::Customer), default: nil
      const :error, T.nilable(Inttegro::Shared::ErrorPayload), default: nil
    end
  end
end
