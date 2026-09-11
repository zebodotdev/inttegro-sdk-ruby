# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # String-backed values accepted by the Inttegro API for Inttegro::MessageTemplate::Status.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `draft`.
        # @return [Inttegro::MessageTemplate::Status]
        DRAFT = new("draft")
        # Serialized wire value: `published`.
        # @return [Inttegro::MessageTemplate::Status]
        PUBLISHED = new("published")
        # Serialized wire value: `archived`.
        # @return [Inttegro::MessageTemplate::Status]
        ARCHIVED = new("archived")
      end
    end
  end
end
