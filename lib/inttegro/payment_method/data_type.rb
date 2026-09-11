# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class PaymentMethod
    # Payment rail type (currently only mobile_money supported)
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class DataType < T::Enum
      enums do
        # Serialized wire value: `mobile_money`.
        # @return [Inttegro::PaymentMethod::DataType]
        MOBILE_MONEY = new("mobile_money")
      end
    end
  end
end
