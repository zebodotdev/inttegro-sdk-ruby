# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for secret-key creation, public metadata, revocation, and authentication activity.
    #
    # Access this resource through {Inttegro::Client#keys}. Lookup and listing methods never return
    # bearer token material; the token is available only in the result of {#generate}.
    class Keys
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Generate a new active secret key.
      #
      # @param payload [Hash, Inttegro::SecretKey::GenerateRequest] key label and request metadata
      # @return [Inttegro::SecretKey::Generated] key metadata and one-time bearer token
      def generate(payload = {})
        @http.post_resource("/keys/generate", Inttegro::SecretKey::Generated, :key, payload || {})
      end

      # Retrieve public metadata for the application's secret keys.
      #
      # @param payload [Hash, Inttegro::SecretKey::PageRequest] pagination fields
      # @return [Inttegro::SecretKey::Page] typed page of keys
      def page(payload = {})
        @http.post_resource("/keys/page", Inttegro::SecretKey::Page, :page, payload || {})
      end

      # Retrieve one secret key's public metadata using a supported identifier name.
      #
      # The first non-+nil+ value in +secret_key_id+, +key_id+, and +id+ order is sent.
      #
      # @param secret_key_id [String, nil] preferred secret-key identifier
      # @param key_id [String, nil] alternate key identifier
      # @param id [String, nil] generic identifier accepted by older endpoint shapes
      # @return [Inttegro::SecretKey] matching key metadata
      def lookup(secret_key_id: nil, key_id: nil, id: nil)
        @http.post_resource(
          "/keys/lookup",
          Inttegro::SecretKey, :key,
          identifier_payload(secret_key_id, key_id, id)
        )
      end

      # Update mutable secret-key metadata.
      #
      # @param payload [Hash, Inttegro::SecretKey::UpdateRequest] key identifier and fields to change
      # @return [Inttegro::SecretKey] updated key metadata
      def update(payload)
        @http.post_resource("/keys/update", Inttegro::SecretKey, :key, payload)
      end

      # Revoke one secret key using a supported identifier name.
      #
      # @param secret_key_id [String, nil] preferred secret-key identifier
      # @param key_id [String, nil] alternate key identifier
      # @param id [String, nil] generic identifier accepted by older endpoint shapes
      # @return [Inttegro::SecretKey] revoked key metadata
      def destroy(secret_key_id: nil, key_id: nil, id: nil)
        @http.post_resource(
          "/keys/destroy",
          Inttegro::SecretKey, :key,
          identifier_payload(secret_key_id, key_id, id)
        )
      end

      # Retrieve recent authentication outcomes for one secret key.
      #
      # @param secret_key_id [String, nil] preferred secret-key identifier
      # @param key_id [String, nil] alternate key identifier
      # @param id [String, nil] generic identifier accepted by older endpoint shapes
      # @param options [Hash] pagination or filter fields merged into the request
      # @return [Inttegro::SecretKey::Usage] typed usage activity
      def usage(secret_key_id: nil, key_id: nil, id: nil, **options)
        @http.post_model("/keys/usage", Inttegro::SecretKey::Usage,
          identifier_payload(secret_key_id, key_id, id).merge(options)
        )
      end

      private

      def identifier_payload(secret_key_id, key_id, id)
        if secret_key_id
          { secret_key_id: secret_key_id }
        elsif key_id
          { key_id: key_id }
        else
          { id: id }
        end
      end
    end
  end
end
