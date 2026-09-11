# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Wallet
    # String-backed values accepted by the Inttegro API for Inttegro::Wallet::Type.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class Type < T::Enum
      enums do
        # Serialized wire value: `mobile_money`.
        # @return [Inttegro::Wallet::Type]
        MOBILE_MONEY = new("mobile_money")
      end
    end
  end
end
