# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "create_sms_request_channel"
require_relative "sms_content"
require_relative "variable_input"

module Inttegro
  class MessageTemplate
    # Typed representation of the create sms request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] about
    #   Value of the `about` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `about`.
    #   @return [String, nil]
    #
    # @!attribute [r] channel
    #   Value of the `channel` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `channel`.
    #   @return [Inttegro::MessageTemplate::CreateSMSRequestChannel]
    #
    # @!attribute [r] locale
    #   Value of the `locale` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `locale`.
    #   @return [String, nil]
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `name`.
    #   @return [String]
    #
    # @!attribute [r] purpose
    #   Value of the `purpose` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `purpose`.
    #   @return [String]
    #
    # @!attribute [r] sms
    #   Value of the `sms` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `sms`.
    #   @return [Inttegro::MessageTemplate::SMSContent]
    #
    # @!attribute [r] variables
    #   Value of the `variables` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `variables`.
    #   @return [Array<Inttegro::MessageTemplate::VariableInput>, nil]
    class CreateSMSRequest < T::Struct
      const :about, T.nilable(String), default: nil
      const :channel, Inttegro::MessageTemplate::CreateSMSRequestChannel
      const :locale, T.nilable(String), default: nil
      const :name, String
      const :purpose, String
      const :sms, Inttegro::MessageTemplate::SMSContent
      const :variables, T.nilable(T::Array[Inttegro::MessageTemplate::VariableInput]), default: nil
    end
  end
end
