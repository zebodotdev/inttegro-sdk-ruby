# frozen_string_literal: true

module Commerce
  module Resources
    class UploadRequests
      def initialize(http)
        @http = http
      end

      def create(payload, idempotency_key: nil)
        @http.post_with_headers("/upload_requests/create", payload, headers: headers(idempotency_key))
      end

      def lookup(id:)
        @http.post("/upload_requests/lookup", { id: id })
      end

      def page(payload = {})
        @http.post("/upload_requests/page", payload)
      end

      def cancel(payload, idempotency_key: nil)
        @http.post_with_headers("/upload_requests/cancel", payload, headers: headers(idempotency_key))
      end

      def fulfill(upload_url:, file:)
        @http.post_multipart(upload_url, files: { file: file }, authenticated: false)
      end

      private

      def headers(idempotency_key)
        idempotency_key ? { "Idempotency-Key" => idempotency_key } : {}
      end
    end
  end
end
