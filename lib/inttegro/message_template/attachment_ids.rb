# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class MessageTemplate
    # Stored file IDs returned by previews. Chime send, schedule, and broadcast currently reject
    # stored-template attachments.
    #
    # @api public
    # @return [Array<String>]
    AttachmentIDs = T.type_alias { T::Array[String] }
  end
end
