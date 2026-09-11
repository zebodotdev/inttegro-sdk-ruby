# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Mobile money service provider
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class MobileMoneyNetwork < T::Enum
      enums do
        # Serialized wire value: `airtel`.
        # @return [Inttegro::Shared::MobileMoneyNetwork]
        AIRTEL = new("airtel")
        # Serialized wire value: `mtn`.
        # @return [Inttegro::Shared::MobileMoneyNetwork]
        MTN = new("mtn")
        # Serialized wire value: `telecel`.
        # @return [Inttegro::Shared::MobileMoneyNetwork]
        TELECEL = new("telecel")
        # Serialized wire value: `vodafone`.
        # @return [Inttegro::Shared::MobileMoneyNetwork]
        VODAFONE = new("vodafone")
      end
    end
  end
end
