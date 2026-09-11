# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # String-backed values accepted by the Inttegro API for Inttegro::File::Disposition.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Disposition < T::Enum
      enums do
        # Serialized wire value: `attachment`.
        # @return [Inttegro::File::Disposition]
        ATTACHMENT = new("attachment")
        # Serialized wire value: `inline`.
        # @return [Inttegro::File::Disposition]
        INLINE = new("inline")
      end
    end
  end
end
