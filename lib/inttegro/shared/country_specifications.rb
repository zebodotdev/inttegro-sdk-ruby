# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "country_specification"

module Inttegro
  module Shared
    # Typed representation of the country specifications object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] countries
    #   Country specifications keyed by country code.
    #
    #   Required in the API payload. Wire name: `countries`.
    #   @return [Hash{String => Inttegro::Shared::CountrySpecification}]
    class CountrySpecifications < T::Struct
      const :countries, T::Hash[String, Inttegro::Shared::CountrySpecification]
    end
  end
end
