# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "shipping_details"
require_relative "shipping_line_item_type"

module Inttegro
  module Shared
    # Typed representation of the shipping line item object in the Inttegro API.
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
    #   @return [Inttegro::Shared::ShippingLineItemType]
    #
    # @!attribute [r] shipping
    #   Value of the `shipping` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `shipping`.
    #   @return [Inttegro::Shared::ShippingDetails]
    class ShippingLineItem < T::Struct
      const :type, Inttegro::Shared::ShippingLineItemType
      const :shipping, Inttegro::Shared::ShippingDetails
    end
  end
end
