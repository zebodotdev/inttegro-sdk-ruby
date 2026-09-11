# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "next_action_request_confirmation_last_request"

module Inttegro
  class Payment
    # Details for requesting a fresh customer confirmation.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] last_request
    #   Value of the `last_request` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `last_request`.
    #   @return [Inttegro::Payment::NextActionRequestConfirmationLastRequest, nil]
    #
    # @!attribute [r] after
    #   Value of the `after` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `after`.
    #   @return [Time, nil]
    class NextActionRequestConfirmation < T::Struct
      const :last_request, T.nilable(Inttegro::Payment::NextActionRequestConfirmationLastRequest), default: nil
      const :after, T.nilable(Time), default: nil
    end
  end
end
