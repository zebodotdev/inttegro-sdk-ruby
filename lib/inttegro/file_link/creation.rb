# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "file_link"

module Inttegro
  class FileLink
    # Typed representation of the creation object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] file_link
    #   Public file link metadata. Token hashes and provider URLs are not exposed.
    #
    #   Required in the API payload. Wire name: `file_link`.
    #   @return [Inttegro::FileLink]
    #
    # @!attribute [r] url
    #   Public capability URL. Treat as bearer-secret material.
    #
    #   Required in the API payload. Wire name: `url`.
    #   @return [String]
    class Creation < T::Struct
      const :file_link, Inttegro::FileLink
      const :url, String
    end
  end
end
