# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "owner_input"
require_relative "request_base_pull_configuration"
require_relative "request_base_push_configuration"
require_relative "type"

module Inttegro
  class FinancialAccount
    # Typed representation of the request base object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] currency
    #   Supported lowercase currency code
    #
    #   Required in the API payload. Wire name: `currency`.
    #   @return [String]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined values accepted on resource creation. Values are serialized to strings
    #   before storage.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => Object}, nil]
    #
    # @!attribute [r] description
    #   Value of the `description` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] label
    #   Value of the `label` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `label`.
    #   @return [String]
    #
    # @!attribute [r] owner
    #   Value of the `owner` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `owner`.
    #   @return [Inttegro::FinancialAccount::OwnerInput, nil]
    #
    # @!attribute [r] pull_configuration
    #   Value of the `pull_configuration` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `pull_configuration`.
    #   @return [Inttegro::FinancialAccount::RequestBasePullConfiguration, nil]
    #
    # @!attribute [r] push_configuration
    #   Value of the `push_configuration` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `push_configuration`.
    #   @return [Inttegro::FinancialAccount::RequestBasePushConfiguration, nil]
    #
    # @!attribute [r] reference
    #   Value of the `reference` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `reference`.
    #   @return [String]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::FinancialAccount::Type]
    class RequestBase < T::Struct
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, Object]), default: nil
      const :description, T.nilable(String), default: nil
      const :label, String
      const :owner, T.nilable(Inttegro::FinancialAccount::OwnerInput), default: nil
      const :pull_configuration, T.nilable(Inttegro::FinancialAccount::RequestBasePullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::FinancialAccount::RequestBasePushConfiguration), default: nil
      const :reference, String
      const :type, Inttegro::FinancialAccount::Type
    end
  end
end
