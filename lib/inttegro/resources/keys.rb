# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Keys
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def generate(payload = {})
        @http.post_resource("/keys/generate", Inttegro::GeneratedSecretKey, :key, payload || {})
      end

      def page(payload = {})
        @http.post_resource("/keys/page", Inttegro::SecretKeyPage, :page, payload || {})
      end

      def lookup(secret_key_id: nil, key_id: nil, id: nil)
        @http.post_resource(
          "/keys/lookup",
          Inttegro::SecretKey, :key,
          identifier_payload(secret_key_id, key_id, id)
        )
      end

      def update(payload)
        @http.post_resource("/keys/update", Inttegro::SecretKey, :key, payload)
      end

      def destroy(secret_key_id: nil, key_id: nil, id: nil)
        @http.post_resource(
          "/keys/destroy",
          Inttegro::SecretKey, :key,
          identifier_payload(secret_key_id, key_id, id)
        )
      end

      def usage(secret_key_id: nil, key_id: nil, id: nil, **options)
        @http.post_model("/keys/usage", Inttegro::SecretKeyUsage,
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
