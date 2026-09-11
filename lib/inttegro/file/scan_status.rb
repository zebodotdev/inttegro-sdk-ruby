# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # String-backed values accepted by the Inttegro API for Inttegro::File::ScanStatus.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class ScanStatus < T::Enum
      enums do
        # Serialized wire value: `pending`.
        # @return [Inttegro::File::ScanStatus]
        PENDING = new("pending")
        # Serialized wire value: `passed`.
        # @return [Inttegro::File::ScanStatus]
        PASSED = new("passed")
        # Serialized wire value: `failed`.
        # @return [Inttegro::File::ScanStatus]
        FAILED = new("failed")
        # Serialized wire value: `skipped`.
        # @return [Inttegro::File::ScanStatus]
        SKIPPED = new("skipped")
      end
    end
  end
end
