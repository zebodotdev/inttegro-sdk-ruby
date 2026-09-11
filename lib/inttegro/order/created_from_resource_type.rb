# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # String-backed values accepted by the Inttegro API for
    # Inttegro::Order::CreatedFromResourceType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class CreatedFromResourceType < T::Enum
      enums do
        # Serialized wire value: `purchase_intent`.
        # @return [Inttegro::Order::CreatedFromResourceType]
        PURCHASE_INTENT = new("purchase_intent")
      end
    end
  end
end
