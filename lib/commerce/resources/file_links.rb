# frozen_string_literal: true

module Commerce
  module Resources
    class FileLinks
      def initialize(http)
        @http = http
      end

      def create(payload, idempotency_key: nil)
        @http.post_with_headers("/file_links/create", payload, headers: headers(idempotency_key))
      end

      def lookup(id:)
        @http.post("/file_links/lookup", { id: id })
      end

      def page(payload = {})
        @http.post("/file_links/page", payload)
      end

      def revoke(payload, idempotency_key: nil)
        @http.post_with_headers("/file_links/revoke", payload, headers: headers(idempotency_key))
      end

      def open(url, save_to: nil)
        download = @http.get_binary_public(url)
        download.save_to(save_to) if save_to
        download
      end

      private

      def headers(idempotency_key)
        idempotency_key ? { "Idempotency-Key" => idempotency_key } : {}
      end
    end
  end
end
