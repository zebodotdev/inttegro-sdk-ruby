# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "fee_details"
require_relative "fee_line_item_type"

module Inttegro
  module Shared
    # Typed representation of the fee line item object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] type
    #   Line item type discriminator
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::Shared::FeeLineItemType]
    #
    # @!attribute [r] fee
    #   Value of the `fee` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `fee`.
    #   @return [Inttegro::Shared::FeeDetails]
    class FeeLineItem < T::Struct
      const :type, Inttegro::Shared::FeeLineItemType
      const :fee, Inttegro::Shared::FeeDetails
    end
  end
end
