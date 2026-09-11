# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "mandate"

module Inttegro
  class FinancialAccount
    # Typed representation of the pull configuration object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] enabled_at
    #   Value of the `enabled_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `enabled_at`.
    #   @return [Time]
    #
    # @!attribute [r] mandate
    #   Value of the `mandate` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `mandate`.
    #   @return [Inttegro::FinancialAccount::Mandate]
    class PullConfiguration < T::Struct
      const :enabled_at, Time
      const :mandate, Inttegro::FinancialAccount::Mandate
    end
  end
end
