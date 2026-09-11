# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "settings_lookup_schedule"

module Inttegro
  class Payout
    # Complete payout settings read model
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
    #   Required in the API payload. Wire name: `destinations`.
    #   @return [Hash{String => String}]
    #
    # @!attribute [r] fx_enabled
    #   Present only when foreign exchange is enabled in stored settings
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `fx_enabled`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] schedule
    #   Active payout schedule
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `schedule`.
    #   @return [Inttegro::Payout::SettingsLookupSchedule, nil]
    class SettingsLookup < T::Struct
      const :destinations, T::Hash[String, String]
      const :fx_enabled, T.nilable(T::Boolean), default: nil
      const :schedule, T.nilable(Inttegro::Payout::SettingsLookupSchedule), default: nil
    end
  end
end
