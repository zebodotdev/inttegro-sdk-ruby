# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "settings"

module Inttegro
  class PaymentMethod
    # Typed representation of the get settings response object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] settings
    #   Payment method acceptance configuration for an application
    #
    #   Required in the API payload. Wire name: `settings`.
    #   @return [Inttegro::PaymentMethod::Settings]
    class GetSettingsResponse < T::Struct
      const :settings, Inttegro::PaymentMethod::Settings
    end
  end
end
