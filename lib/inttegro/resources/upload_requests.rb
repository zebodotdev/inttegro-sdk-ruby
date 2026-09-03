# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class UploadRequests
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload, idempotency_key: nil)
        @http.post_resource(
          "/upload_requests/create",
          Inttegro::UploadRequest, :upload_request,
          payload,
          headers: headers(idempotency_key)
        )
      end

      def lookup(id:)
        @http.post_resource(
          "/upload_requests/lookup",
          Inttegro::UploadRequestDetails, :upload_request,
          { id: id }
        )
      end

      def page(payload = {})
        @http.post_resource("/upload_requests/page", Inttegro::UploadRequestPage, :page, payload || {})
      end

      def cancel(payload, idempotency_key: nil)
        @http.post_resource(
          "/upload_requests/cancel",
          Inttegro::UploadRequest, :upload_request,
          payload,
          headers: headers(idempotency_key)
        )
      end

      def review(payload, idempotency_key: nil)
        @http.post_resource(
          "/upload_requests/review",
          Inttegro::UploadRequestDetails, :upload_request,
          payload,
          headers: headers(idempotency_key)
        )
      end

      def fulfill(upload_url:, file:)
        @http.post_multipart_model(
          upload_url,
          Inttegro::UploadFulfillment,
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
