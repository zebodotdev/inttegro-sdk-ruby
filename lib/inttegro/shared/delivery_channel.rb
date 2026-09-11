# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  module Shared
    # Delivery channel.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class DeliveryChannel < T::Enum
      enums do
        # Serialized wire value: `email`.
        # @return [Inttegro::Shared::DeliveryChannel]
        EMAIL = new("email")
        # Serialized wire value: `sms`.
        # @return [Inttegro::Shared::DeliveryChannel]
        SMS = new("sms")
      end
    end
  end
end
