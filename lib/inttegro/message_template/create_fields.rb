# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "channel"
require_relative "variable_input"

module Inttegro
  class MessageTemplate
    # Typed representation of the create fields object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Human-readable template name.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] about
    #   Optional description of when this template should be used.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] channel
    #   Delivery channel this template renders for.
    #
    #   Required in the API payload. Wire name: `channel`.
    #   @return [Inttegro::MessageTemplate::Channel]
    #
    # @!attribute [r] purpose
    #   Caller-defined purpose for filtering and analytics.
    #
    #   Required in the API payload. Wire name: `purpose`.
    #   @return [String]
    #
    # @!attribute [r] locale
    #   Template locale. Defaults to `en` when omitted.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `locale`.
    #   @return [String, nil]
    #
    # @!attribute [r] variables
    #   Variables accepted by this template.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `variables`.
    #   @return [Array<Inttegro::MessageTemplate::VariableInput>, nil]
    class CreateFields < T::Struct
      const :name, String
      const :about, T.nilable(String), default: nil
      const :channel, Inttegro::MessageTemplate::Channel
      const :purpose, String
      const :locale, T.nilable(String), default: nil
      const :variables, T.nilable(T::Array[Inttegro::MessageTemplate::VariableInput]), default: nil
    end
  end
end
