# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class UploadRequests
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload, idempotency_key: nil)
        @http.post_model(
          "/upload_requests/create",
          Inttegro::Models::UploadRequestResponse,
          payload,
          headers: headers(idempotency_key)
        )
      end

      def lookup(id:)
        @http.post_model(
          "/upload_requests/lookup",
          Inttegro::Models::UploadRequestWithAttemptResponse,
          { id: id }
        )
      end

      def page(payload = {})
        @http.post_model("/upload_requests/page", Inttegro::Models::UploadRequestPageResponse, payload || {})
      end

      def cancel(payload, idempotency_key: nil)
        @http.post_model(
          "/upload_requests/cancel",
          Inttegro::Models::UploadRequestResponse,
          payload,
          headers: headers(idempotency_key)
        )
      end

      def review(payload, idempotency_key: nil)
        @http.post_model(
          "/upload_requests/review",
          Inttegro::Models::UploadRequestWithAttemptResponse,
          payload,
          headers: headers(idempotency_key)
        )
      end

      def fulfill(upload_url:, file:)
        @http.post_multipart_model(
          upload_url,
          Inttegro::Models::FulfillUploadRequestResponse,
          files: { file: file },
          authenticated: false
        )
      end

      private

      def headers(idempotency_key)
        idempotency_key ? { "Idempotency-Key" => idempotency_key } : {}
      end
    end
  end
end
