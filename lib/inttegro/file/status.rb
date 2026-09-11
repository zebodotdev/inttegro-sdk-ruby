# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # String-backed values accepted by the Inttegro API for Inttegro::File::Status.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Status < T::Enum
      enums do
        # Serialized wire value: `uploading`.
        # @return [Inttegro::File::Status]
        UPLOADING = new("uploading")
        # Serialized wire value: `processing`.
        # @return [Inttegro::File::Status]
        PROCESSING = new("processing")
        # Serialized wire value: `available`.
        # @return [Inttegro::File::Status]
        AVAILABLE = new("available")
        # Serialized wire value: `failed`.
        # @return [Inttegro::File::Status]
        FAILED = new("failed")
        # Serialized wire value: `deleted`.
        # @return [Inttegro::File::Status]
        DELETED = new("deleted")
      end
    end
  end
end
