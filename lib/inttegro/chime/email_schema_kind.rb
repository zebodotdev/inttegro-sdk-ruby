# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Chime
    # Classification for the generated markup
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class EmailSchemaKind < T::Enum
      enums do
        # Serialized wire value: `gmail_view_action`.
        # @return [Inttegro::Chime::EmailSchemaKind]
        GMAIL_VIEW_ACTION = new("gmail_view_action")
        # Serialized wire value: `schema_org_order`.
        # @return [Inttegro::Chime::EmailSchemaKind]
        SCHEMA_ORG_ORDER = new("schema_org_order")
        # Serialized wire value: `schema_org_invoice`.
        # @return [Inttegro::Chime::EmailSchemaKind]
        SCHEMA_ORG_INVOICE = new("schema_org_invoice")
      end
    end
  end
end
