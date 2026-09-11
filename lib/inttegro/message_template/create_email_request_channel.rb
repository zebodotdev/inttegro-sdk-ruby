# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # String-backed values accepted by the Inttegro API for
    # Inttegro::MessageTemplate::CreateEmailRequestChannel.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class CreateEmailRequestChannel < T::Enum
      enums do
        # Serialized wire value: `email`.
        # @return [Inttegro::MessageTemplate::CreateEmailRequestChannel]
        EMAIL = new("email")
      end
    end
  end
end
