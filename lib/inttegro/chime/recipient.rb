# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "inline_recipient"
require_relative "saved_customer_recipient"

module Inttegro
  class Chime
    # Typed representation of the recipient object in the Inttegro API.
    #
    # @api public
    # @return [Inttegro::Chime::InlineRecipient, Inttegro::Chime::SavedCustomerRecipient]
    Recipient = T.type_alias { T.any(Inttegro::Chime::InlineRecipient, Inttegro::Chime::SavedCustomerRecipient) }
  end
end
