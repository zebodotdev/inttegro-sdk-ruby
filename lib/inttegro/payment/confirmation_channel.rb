# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Channel used to send the token
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class ConfirmationChannel < T::Enum
      enums do
        # Serialized wire value: `sms`.
        # @return [Inttegro::Payment::ConfirmationChannel]
        SMS = new("sms")
        # Serialized wire value: `email`.
        # @return [Inttegro::Payment::ConfirmationChannel]
        EMAIL = new("email")
        # Serialized wire value: `push`.
        # @return [Inttegro::Payment::ConfirmationChannel]
        PUSH = new("push")
      end
    end
  end
end
