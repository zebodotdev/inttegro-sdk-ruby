# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Payment
    # Type of action required
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class NextActionType < T::Enum
      enums do
        # Serialized wire value: `confirm_payment`.
        # @return [Inttegro::Payment::NextActionType]
        CONFIRM_PAYMENT = new("confirm_payment")
        # Serialized wire value: `execute`.
        # @return [Inttegro::Payment::NextActionType]
        EXECUTE = new("execute")
        # Serialized wire value: `redirect`.
        # @return [Inttegro::Payment::NextActionType]
        REDIRECT = new("redirect")
        # Serialized wire value: `authorize_payment`.
        # @return [Inttegro::Payment::NextActionType]
        AUTHORIZE_PAYMENT = new("authorize_payment")
        # Serialized wire value: `request_confirmation`.
        # @return [Inttegro::Payment::NextActionType]
        REQUEST_CONFIRMATION = new("request_confirmation")
      end
    end
  end
end
