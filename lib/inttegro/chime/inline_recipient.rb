# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "inline_recipient_variant1"
require_relative "inline_recipient_variant2"

module Inttegro
  class Chime
    # Typed representation of the inline recipient object in the Inttegro API.
    #
    # @api public
    # @return [Inttegro::Chime::InlineRecipientVariant1, Inttegro::Chime::InlineRecipientVariant2]
    InlineRecipient = T.type_alias { T.any(Inttegro::Chime::InlineRecipientVariant1, Inttegro::Chime::InlineRecipientVariant2) }
  end
end
