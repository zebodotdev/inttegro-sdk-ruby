# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "settings_lookup_schedule_aging_spec"

module Inttegro
  class Payout
    # Active payout schedule
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] aging_spec
    #   Value of the `aging_spec` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `aging_spec`.
    #   @return [Inttegro::Payout::SettingsLookupScheduleAgingSpec]
    #
    # @!attribute [r] description
    #   Value of the `description` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `description`.
    #   @return [String]
    #
    # @!attribute [r] interval
    #   Value of the `interval` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `interval`.
    #   @return [String]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] schedule_on
    #   Value of the `schedule_on` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `schedule_on`.
    #   @return [String]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [String]
    class SettingsLookupSchedule < T::Struct
      const :aging_spec, Inttegro::Payout::SettingsLookupScheduleAgingSpec
      const :description, String
      const :interval, String
      const :name, String
      const :schedule_on, String
      const :type, String
    end
  end
end
