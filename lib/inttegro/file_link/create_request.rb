# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../file/actor_input"
require_relative "access_request"
require_relative "delivery"

module Inttegro
  class FileLink
    # Typed representation of the create request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] file_id
    #   Value of the `file_id` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `file_id`.
    #   @return [String]
    #
    # @!attribute [r] delivery
    #   Value of the `delivery` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `delivery`.
    #   @return [Inttegro::FileLink::Delivery, nil]
    #
    # @!attribute [r] access
    #   Value of the `access` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `access`.
    #   @return [Inttegro::FileLink::AccessRequest, nil]
    #
    # @!attribute [r] created_by
    #   Value of the `created_by` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `created_by`.
    #   @return [Inttegro::File::ActorInput, nil]
    #
    # @!attribute [r] custom_data
    #   Merchant-defined string values attached to a resource. SDKs expose this as a semantic
    #   collection rather than a raw map.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `custom_data`.
    #   @return [Hash{String => String}, nil]
    #
    # @!attribute [r] expires_at
    #   Value of the `expires_at` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `expires_at`.
    #   @return [Time, nil]
    class CreateRequest < T::Struct
      const :file_id, String
      const :delivery, T.nilable(Inttegro::FileLink::Delivery), default: nil
      const :access, T.nilable(Inttegro::FileLink::AccessRequest), default: nil
      const :created_by, T.nilable(Inttegro::File::ActorInput), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :expires_at, T.nilable(Time), default: nil
    end
  end
end
