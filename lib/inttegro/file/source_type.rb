# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class File
    # String-backed values accepted by the Inttegro API for Inttegro::File::SourceType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class SourceType < T::Enum
      enums do
        # Serialized wire value: `direct`.
        # @return [Inttegro::File::SourceType]
        DIRECT = new("direct")
        # Serialized wire value: `upload_request`.
        # @return [Inttegro::File::SourceType]
        UPLOAD_REQUEST = new("upload_request")
        # Serialized wire value: `service`.
        # @return [Inttegro::File::SourceType]
        SERVICE = new("service")
      end
    end
  end
end
