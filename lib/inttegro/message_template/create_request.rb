# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "create_email_request"
require_relative "create_sms_request"

module Inttegro
  class MessageTemplate
    # Create request for one reusable SMS or email message template.
    #
    # @api public
    # @return [Inttegro::MessageTemplate::CreateSMSRequest, Inttegro::MessageTemplate::CreateEmailRequest]
    CreateRequest = T.type_alias { T.any(Inttegro::MessageTemplate::CreateSMSRequest, Inttegro::MessageTemplate::CreateEmailRequest) }
  end
end
