# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class FileLinks
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload, idempotency_key: nil)
        @http.post_model(
          "/file_links/create",
          Inttegro::CreateFileLinkResponse,
          payload,
          headers: headers(idempotency_key)
        )
      end

      def lookup(id:)
        @http.post_model("/file_links/lookup", Inttegro::FileLinkResponse, { id: id })
      end

      def page(payload = {})
        @http.post_model("/file_links/page", Inttegro::FileLinkPageResponse, payload || {})
      end

      def revoke(payload, idempotency_key: nil)
        @http.post_model(
          "/file_links/revoke",
          Inttegro::FileLinkResponse,
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
