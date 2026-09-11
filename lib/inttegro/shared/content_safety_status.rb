# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Safety decision for the email content
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class ContentSafetyStatus < T::Enum
      enums do
        # Serialized wire value: `allowed`.
        # @return [Inttegro::Shared::ContentSafetyStatus]
        ALLOWED = new("allowed")
        # Serialized wire value: `rejected`.
        # @return [Inttegro::Shared::ContentSafetyStatus]
        REJECTED = new("rejected")
        # Serialized wire value: `quarantined`.
        # @return [Inttegro::Shared::ContentSafetyStatus]
        QUARANTINED = new("quarantined")
      end
    end
  end
end
