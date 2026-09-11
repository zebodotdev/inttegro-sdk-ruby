# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "settings_mutation"

module Inttegro
  class Payout
    # Typed representation of the enable automatic response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] settings
    #   Payout settings fields returned after a mutation
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `settings`.
    #   @return [Inttegro::Payout::SettingsMutation, nil]
    class EnableAutomaticResponse < T::Struct
      const :settings, T.nilable(Inttegro::Payout::SettingsMutation), default: nil
    end
  end
end
