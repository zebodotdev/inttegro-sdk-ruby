# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "settings_mutation_schedule"

module Inttegro
  class Payout
    # Payout settings fields returned after a mutation
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] destinations
    #   Currency-to-financial-account destination assignments.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `destinations`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] id
    #   Payout settings identifier
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `id`.
    #   @return [String, nil]
    #
    # @!attribute [r] schedule
    #   Updated payout schedule
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `schedule`.
    #   @return [Inttegro::Payout::SettingsMutationSchedule, nil]
    class SettingsMutation < T::Struct
      const :destinations, T.nilable(T::Hash[String, String]), default: nil
      const :id, T.nilable(String), default: nil
      const :schedule, T.nilable(Inttegro::Payout::SettingsMutationSchedule), default: nil
    end
  end
end
