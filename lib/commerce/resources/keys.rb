# frozen_string_literal: true

module Commerce
  module Resources
    class Keys
      def initialize(http)
        @http = http
      end

      def generate(payload = {})
        @http.post("/keys/generate", payload || {})
      end

      def page(payload = {})
        @http.post("/keys/page", payload || {})
      end

      def lookup(secret_key_id: nil, key_id: nil, id: nil)
        @http.post("/keys/lookup", identifier_payload(secret_key_id, key_id, id))
      end

      def update(payload)
        @http.post("/keys/update", payload)
      end

      def destroy(secret_key_id: nil, key_id: nil, id: nil)
        @http.post("/keys/destroy", identifier_payload(secret_key_id, key_id, id))
      end

      def usage(secret_key_id: nil, key_id: nil, id: nil, **options)
        @http.post("/keys/usage", identifier_payload(secret_key_id, key_id, id).merge(options))
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
