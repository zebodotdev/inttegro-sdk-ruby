# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "alphabet_type"

module Inttegro
  module OTP
    # Typed representation of the initiate request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] async_delivery
    #   Return after accepting the transaction while SMS delivery continues asynchronously.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `async_delivery`.
    #   @return [Boolean, nil]
    #
    # @!attribute [r] message_template
    #   SMS text containing the required `{token}` placeholder and optional `{service}` placeholder.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `message_template`.
    #   @return [String, nil]
    #
    # @!attribute [r] purpose
    #   Your label for the verification flow.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `purpose`.
    #   @return [String, nil]
    #
    # @!attribute [r] recipient
    #   Phone number in international format (E.164)
    #
    #   Required in the API payload. Wire name: `recipient`.
    #   @return [String]
    #
    # @!attribute [r] sender
    #   Optional sender identifier shown to the recipient (3-12 characters).
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `sender`.
    #   @return [String, nil]
    #
    # @!attribute [r] service_name
    #   Service name substituted for `{service}` (2-20 characters).
    #
    #   Required in the API payload. Wire name: `service_name`.
    #   @return [String]
    #
    # @!attribute [r] token_alphabet
    #   Custom alphabet for token generation (mutually exclusive with token_alphabet_type)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `token_alphabet`.
    #   @return [String, nil]
    #
    # @!attribute [r] token_alphabet_type
    #   Predefined alphabet type (mutually exclusive with token_alphabet)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `token_alphabet_type`.
    #   @return [Inttegro::OTP::AlphabetType, nil]
    #
    # @!attribute [r] token_size
    #   Length of generated token (5-10 characters)
    #
    #   Required in the API payload. Wire name: `token_size`.
    #   @return [Integer]
    #
    # @!attribute [r] validity_duration_in_minutes
    #   How long the token remains valid (3-10080 minutes)
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `validity_duration_in_minutes`.
    #   @return [Integer, nil]
    class InitiateRequest < T::Struct
      const :async_delivery, T.nilable(T::Boolean), default: nil
      const :message_template, T.nilable(String), default: nil
      const :purpose, T.nilable(String), default: nil
      const :recipient, String
      const :sender, T.nilable(String), default: nil
      const :service_name, String
      const :token_alphabet, T.nilable(String), default: nil
      const :token_alphabet_type, T.nilable(Inttegro::OTP::AlphabetType), default: nil
      const :token_size, Integer
      const :validity_duration_in_minutes, T.nilable(Integer), default: nil
    end
  end
end
