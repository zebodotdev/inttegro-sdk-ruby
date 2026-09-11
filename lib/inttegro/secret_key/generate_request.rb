# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class SecretKey
    # Optional public input for secret key generation.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] label
    #   Optional human-readable label. Surrounding whitespace is trimmed; an empty value creates an
    #   unlabeled key.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    class GenerateRequest < T::Struct
      const :label, T.nilable(String), default: nil
    end
  end
end
