# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "settings_lookup"

module Inttegro
  class Payout
    # Typed representation of the get settings response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] settings
    #   Complete payout settings read model
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `settings`.
    #   @return [Inttegro::Payout::SettingsLookup, nil]
    class GetSettingsResponse < T::Struct
      const :settings, T.nilable(Inttegro::Payout::SettingsLookup), default: nil
    end
  end
end
