# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # String-backed values accepted by the Inttegro API for
    # Inttegro::Chime::InlineRecipientVariant1Type.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class InlineRecipientVariant1Type < T::Enum
      enums do
        # Serialized wire value: `phone`.
        # @return [Inttegro::Chime::InlineRecipientVariant1Type]
        PHONE = new("phone")
      end
    end
  end
end
