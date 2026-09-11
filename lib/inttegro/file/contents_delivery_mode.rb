# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # String-backed values accepted by the Inttegro API for Inttegro::File::ContentsDeliveryMode.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class ContentsDeliveryMode < T::Enum
      enums do
        # Serialized wire value: `stream`.
        # @return [Inttegro::File::ContentsDeliveryMode]
        STREAM = new("stream")
        # Serialized wire value: `redirect`.
        # @return [Inttegro::File::ContentsDeliveryMode]
        REDIRECT = new("redirect")
      end
    end
  end
end
