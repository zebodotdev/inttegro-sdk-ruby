# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payout
    # Typed representation of the settings mutation schedule spec object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] abide
    #   Value of the `abide` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `abide`.
    #   @return [String]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] label
    #   Value of the `label` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `label`.
    #   @return [String]
    #
    # @!attribute [r] t_plus
    #   Value of the `t_plus` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `t_plus`.
    #   @return [String]
    class SettingsMutationScheduleSpec < T::Struct
      const :abide, String
      const :id, String
      const :label, String
      const :t_plus, String
    end
  end
end
