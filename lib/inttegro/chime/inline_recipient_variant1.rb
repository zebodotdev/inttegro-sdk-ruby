# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "inline_recipient_variant1_phone"
require_relative "inline_recipient_variant1_type"

module Inttegro
  class Chime
    # Typed representation of the inline recipient variant1 object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] name
    #   Value of the `name` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] phone
    #   Value of the `phone` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `phone`.
    #   @return [Inttegro::Chime::InlineRecipientVariant1Phone]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Chime::InlineRecipientVariant1Type]
    class InlineRecipientVariant1 < T::Struct
      const :name, T.nilable(String), default: nil
      const :phone, Inttegro::Chime::InlineRecipientVariant1Phone
      const :type, Inttegro::Chime::InlineRecipientVariant1Type
    end
  end
end
