# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FileLink
    # String-backed values accepted by the Inttegro API for Inttegro::FileLink::DeliveryMode.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class DeliveryMode < T::Enum
      enums do
        # Serialized wire value: `redirect`.
        # @return [Inttegro::FileLink::DeliveryMode]
        REDIRECT = new("redirect")
        # Serialized wire value: `download`.
        # @return [Inttegro::FileLink::DeliveryMode]
        DOWNLOAD = new("download")
        # Serialized wire value: `inline`.
        # @return [Inttegro::FileLink::DeliveryMode]
        INLINE = new("inline")
      end
    end
  end
end
