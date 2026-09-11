# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "email_schema_kind"

module Inttegro
  class Chime
    # Schema.org JSON-LD markup generated at email send time.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] kind
    #   Classification for the generated markup
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `kind`.
    #   @return [Inttegro::Chime::EmailSchemaKind, nil]
    #
    # @!attribute [r] json_ld
    #   Deliberately extensible JSON object whose keys and values are defined by the selected
    #   integration or resource subtype.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `json_ld`.
    #   @return [Hash{String => Object}, nil]
    class EmailSchemaMarkup < T::Struct
      const :kind, T.nilable(Inttegro::Chime::EmailSchemaKind), default: nil
      const :json_ld, T.nilable(T::Hash[String, Object]), default: nil
    end
  end
end
