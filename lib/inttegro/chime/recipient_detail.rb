# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "recipient_detail_email"
require_relative "recipient_detail_phone"
require_relative "recipient_type"

module Inttegro
  class Chime
    # Recipient information in response
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Contact type
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Chime::RecipientType]
    #
    # @!attribute [r] name
    #   Recipient name
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `name`.
    #   @return [String, nil]
    #
    # @!attribute [r] phone
    #   Value of the `phone` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `phone`.
    #   @return [Inttegro::Chime::RecipientDetailPhone, nil]
    #
    # @!attribute [r] email
    #   Value of the `email` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `email`.
    #   @return [Inttegro::Chime::RecipientDetailEmail, nil]
    class RecipientDetail < T::Struct
      const :type, Inttegro::Chime::RecipientType
      const :name, T.nilable(String), default: nil
      const :phone, T.nilable(Inttegro::Chime::RecipientDetailPhone), default: nil
      const :email, T.nilable(Inttegro::Chime::RecipientDetailEmail), default: nil
    end
  end
end
