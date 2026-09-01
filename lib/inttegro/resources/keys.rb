# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Keys
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def generate(payload = {})
        @http.post_model("/keys/generate", Inttegro::Models::GenerateSecretKeyResponse, payload || {})
      end

      def page(payload = {})
        @http.post_model("/keys/page", Inttegro::Models::PageSecretKeysResponse, payload || {})
      end

      def lookup(secret_key_id: nil, key_id: nil, id: nil)
        @http.post_model(
          "/keys/lookup",
          Inttegro::Models::LookupSecretKeyResponse,
          identifier_payload(secret_key_id, key_id, id)
        )
      end

      def update(payload)
        @http.post_model("/keys/update", Inttegro::Models::UpdateSecretKeyResponse, payload)
      end

      def destroy(secret_key_id: nil, key_id: nil, id: nil)
        @http.post_model(
          "/keys/destroy",
          Inttegro::Models::DestroySecretKeyResponse,
          identifier_payload(secret_key_id, key_id, id)
        )
      end

      def usage(secret_key_id: nil, key_id: nil, id: nil, **options)
        @http.post_model(
          "/keys/usage",
          Inttegro::Models::SecretKeyUsageResponse,
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
