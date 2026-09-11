# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../shared/financial_institution"
require_relative "../shared/resource_supply"
require_relative "pull_configuration"
require_relative "push_configuration"
require_relative "type"
require_relative "verification"

module Inttegro
  class FinancialAccount
    # Typed representation of the details object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] archived_at
    #   Value of the `archived_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `archived_at`.
    #   @return [Time, nil]
    #
    # @!attribute [r] created_at
    #   Value of the `created_at` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `created_at`.
    #   @return [Time]
    #
    # @!attribute [r] currency
    #   Value of the `currency` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `currency`.
    #   @return [String]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] description
    #   Value of the `description` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `description`.
    #   @return [String, nil]
    #
    # @!attribute [r] id
    #   Value of the `id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `id`.
    #   @return [String]
    #
    # @!attribute [r] institution
    #   Value of the `institution` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `institution`.
    #   @return [Inttegro::Shared::FinancialInstitution, nil]
    #
    # @!attribute [r] label
    #   Value of the `label` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `label`.
    #   @return [String, nil]
    #
    # @!attribute [r] pull_configuration
    #   Value of the `pull_configuration` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `pull_configuration`.
    #   @return [Inttegro::FinancialAccount::PullConfiguration, nil]
    #
    # @!attribute [r] push_configuration
    #   Value of the `push_configuration` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `push_configuration`.
    #   @return [Inttegro::FinancialAccount::PushConfiguration, nil]
    #
    # @!attribute [r] reference
    #   Value of the `reference` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `reference`.
    #   @return [String, nil]
    #
    # @!attribute [r] supplied
    #   Value of the `supplied` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `supplied`.
    #   @return [Inttegro::Shared::ResourceSupply, nil]
    #
    # @!attribute [r] type
    #   Value of the `type` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `type`.
    #   @return [Inttegro::FinancialAccount::Type]
    #
    # @!attribute [r] verification
    #   Value of the `verification` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `verification`.
    #   @return [Inttegro::FinancialAccount::Verification, nil]
    class Details < T::Struct
      const :archived_at, T.nilable(Time), default: nil
      const :created_at, Time
      const :currency, String
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :description, T.nilable(String), default: nil
      const :id, String
      const :institution, T.nilable(Inttegro::Shared::FinancialInstitution), default: nil
      const :label, T.nilable(String), default: nil
      const :pull_configuration, T.nilable(Inttegro::FinancialAccount::PullConfiguration), default: nil
      const :push_configuration, T.nilable(Inttegro::FinancialAccount::PushConfiguration), default: nil
      const :reference, T.nilable(String), default: nil
      const :supplied, T.nilable(Inttegro::Shared::ResourceSupply), default: nil
      const :type, Inttegro::FinancialAccount::Type
      const :verification, T.nilable(Inttegro::FinancialAccount::Verification), default: nil
    end
  end
end
