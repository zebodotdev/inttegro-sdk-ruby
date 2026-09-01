# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Files
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(file:, purpose:, title: nil, custom_data: nil, idempotency_key: nil)
        headers = idempotency_key ? { "Idempotency-Key" => idempotency_key } : {}
        @http.post_multipart_model(
          "/files/create",
          Inttegro::Models::FileResponse,
          fields: { purpose: purpose, title: title, custom_data: custom_data },
          files: { file: file },
          headers: headers
        )
      end

      def lookup(file_id:)
        @http.post_model("/files/lookup", Inttegro::Models::FileResponse, { file_id: file_id })
      end

      def page(payload = {})
        @http.post_model("/files/page", Inttegro::Models::FilePageResponse, payload || {})
      end

      def contents(file_id:, disposition: "attachment")
        @http.post_binary_json("/files/contents", { file_id: file_id, disposition: disposition })
      end

      def delete(file_id:)
        @http.post_model("/files/delete", Inttegro::Models::FileResponse, { file_id: file_id })
      end
    end
  end
end
