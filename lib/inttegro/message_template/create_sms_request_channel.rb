# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # String-backed values accepted by the Inttegro API for
    # Inttegro::MessageTemplate::CreateSMSRequestChannel.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class CreateSMSRequestChannel < T::Enum
      enums do
        # Serialized wire value: `sms`.
        # @return [Inttegro::MessageTemplate::CreateSMSRequestChannel]
        SMS = new("sms")
      end
    end
  end
end
