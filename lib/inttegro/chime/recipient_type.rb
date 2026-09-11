# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # Contact type
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class RecipientType < T::Enum
      enums do
        # Serialized wire value: `phone`.
        # @return [Inttegro::Chime::RecipientType]
        PHONE = new("phone")
        # Serialized wire value: `email`.
        # @return [Inttegro::Chime::RecipientType]
        EMAIL = new("email")
      end
    end
  end
end
