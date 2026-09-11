# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "../file/actor_input"
require_relative "../file/party"
require_relative "../file/resource"
require_relative "attempts_request"
require_relative "constraints"
require_relative "display"

module Inttegro
  class UploadRequest
    # Typed representation of the create request object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] purpose
    #   Value of the `purpose` field in the Inttegro API payload.
    #
    #   Required in the API payload. Wire name: `purpose`.
    #   @return [String]
    #
    # @!attribute [r] constraints
    #   Value of the `constraints` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `constraints`.
    #   @return [Inttegro::UploadRequest::Constraints, nil]
    #
    # @!attribute [r] display_data
    #   Value of the `display` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `display`.
    #   @return [Inttegro::UploadRequest::Display, nil]
    #
    # @!attribute [r] subject
    #   Value of the `subject` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `subject`.
    #   @return [Inttegro::File::Party, nil]
    #
    # @!attribute [r] recipient
    #   Value of the `recipient` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `recipient`.
    #   @return [Inttegro::File::Party, nil]
    #
    # @!attribute [r] resource
    #   Value of the `resource` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `resource`.
    #   @return [Inttegro::File::Resource, nil]
    #
    # @!attribute [r] requester
    #   Value of the `requester` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `requester`.
    #   @return [Inttegro::File::ActorInput, nil]
    #
    # @!attribute [r] attempts
    #   Value of the `attempts` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `attempts`.
    #   @return [Inttegro::UploadRequest::AttemptsRequest, nil]
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
      const :purpose, String
      const :constraints, T.nilable(Inttegro::UploadRequest::Constraints), default: nil
      const :display_data, T.nilable(Inttegro::UploadRequest::Display), default: nil, name: "display"
      const :subject, T.nilable(Inttegro::File::Party), default: nil
      const :recipient, T.nilable(Inttegro::File::Party), default: nil
      const :resource, T.nilable(Inttegro::File::Resource), default: nil
      const :requester, T.nilable(Inttegro::File::ActorInput), default: nil
      const :attempts, T.nilable(Inttegro::UploadRequest::AttemptsRequest), default: nil
      const :custom_data, T.nilable(T::Hash[String, String]), default: nil
      const :expires_at, T.nilable(Time), default: nil
    end
  end
end
