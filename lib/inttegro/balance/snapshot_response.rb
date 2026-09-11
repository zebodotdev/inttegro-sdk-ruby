# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "snapshot"

module Inttegro
  module Balance
    # Typed representation of the snapshot response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] balances
    #   The latest GHS balance snapshot for the application.
    #
    #   Required in the API payload. Wire name: `balances`.
    #   @return [Inttegro::Balance::Snapshot]
    class SnapshotResponse < T::Struct
      const :balances, Inttegro::Balance::Snapshot
    end
  end
end
