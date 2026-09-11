# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "next_action_authorize"
require_relative "next_action_confirm_payment"
require_relative "next_action_redirect"
require_relative "next_action_request_confirmation"
require_relative "next_action_type"

module Inttegro
  class Payment
    # Next action required to complete a payment
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Type of action required
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Payment::NextActionType]
    #
    # @!attribute [r] confirm_payment
    #   Details for customer payment confirmation
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `confirm_payment`.
    #   @return [Inttegro::Payment::NextActionConfirmPayment, nil]
    #
    # @!attribute [r] redirect
    #   Details for redirect action
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `redirect`.
    #   @return [Inttegro::Payment::NextActionRedirect, nil]
    #
    # @!attribute [r] authorize
    #   Details for authorization action
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `authorize`.
    #   @return [Inttegro::Payment::NextActionAuthorize, nil]
    #
    # @!attribute [r] request_confirmation
    #   Details for requesting a fresh customer confirmation.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `request_confirmation`.
    #   @return [Inttegro::Payment::NextActionRequestConfirmation, nil]
    class NextAction < T::Struct
      const :type, Inttegro::Payment::NextActionType
      const :confirm_payment, T.nilable(Inttegro::Payment::NextActionConfirmPayment), default: nil
      const :redirect, T.nilable(Inttegro::Payment::NextActionRedirect), default: nil
      const :authorize, T.nilable(Inttegro::Payment::NextActionAuthorize), default: nil
      const :request_confirmation, T.nilable(Inttegro::Payment::NextActionRequestConfirmation), default: nil
    end
  end
end
