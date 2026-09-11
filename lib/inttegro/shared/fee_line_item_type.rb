# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Line item type discriminator
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class FeeLineItemType < T::Enum
      enums do
        # Serialized wire value: `fee`.
        # @return [Inttegro::Shared::FeeLineItemType]
        FEE = new("fee")
      end
    end
  end
end
