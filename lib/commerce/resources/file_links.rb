# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class FileLinks
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload, idempotency_key: nil)
        @http.post_model(
          "/file_links/create",
          Commerce::Models::CreateFileLinkResponse,
          payload,
          headers: headers(idempotency_key)
        )
      end

      def lookup(id:)
        @http.post_model("/file_links/lookup", Commerce::Models::FileLinkResponse, { id: id })
      end

      def page(payload = {})
        @http.post_model("/file_links/page", Commerce::Models::FileLinkPageResponse, payload || {})
      end

      def revoke(payload, idempotency_key: nil)
        @http.post_model(
          "/file_links/revoke",
          Commerce::Models::FileLinkResponse,
          payload,
          headers: headers(idempotency_key)
        )
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
