# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module FileReference
    # Typed representation of the reconciliation object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] reconciled
    #   Value of the `reconciled` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `reconciled`.
    #   @return [Boolean]
    class Reconciliation < T::Struct
      const :reconciled, T::Boolean
    end
  end
end
