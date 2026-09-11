# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Order
    # Hosted document that was delivered.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class DocumentKind < T::Enum
      enums do
        # Serialized wire value: `invoice`.
        # @return [Inttegro::Order::DocumentKind]
        INVOICE = new("invoice")
        # Serialized wire value: `receipt`.
        # @return [Inttegro::Order::DocumentKind]
        RECEIPT = new("receipt")
      end
    end
  end
end
