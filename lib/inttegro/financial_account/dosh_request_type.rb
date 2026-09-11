# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class FinancialAccount
    # String-backed values accepted by the Inttegro API for
    # Inttegro::FinancialAccount::DoshRequestType.
    #
    # Use the constants below when constructing a request. `#serialize` returns the documented
    # string wire value received from or sent to the API.
    #
    # @api public
    class DoshRequestType < T::Enum
      enums do
        # Serialized wire value: `dosh_account`.
        # @return [Inttegro::FinancialAccount::DoshRequestType]
        DOSH_ACCOUNT = new("dosh_account")
      end
    end
  end
end
