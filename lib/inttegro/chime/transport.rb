# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # String-backed values accepted by the Inttegro API for Inttegro::Chime::Transport.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Transport < T::Enum
      enums do
        # Serialized wire value: `sms`.
        # @return [Inttegro::Chime::Transport]
        SMS = new("sms")
        # Serialized wire value: `email`.
        # @return [Inttegro::Chime::Transport]
        EMAIL = new("email")
      end
    end
  end
end
