# frozen_string_literal: true

module Commerce
  module Resources
    class Files
      def initialize(http)
        @http = http
      end

      def create(file:, purpose:, title: nil, custom_data: nil, idempotency_key: nil)
        headers = idempotency_key ? { "Idempotency-Key" => idempotency_key } : {}
        @http.post_multipart(
          "/files/create",
          fields: { purpose: purpose, title: title, custom_data: custom_data },
          files: { file: file },
          headers: headers
        )
      end

      def lookup(file_id:)
        @http.post("/files/lookup", { file_id: file_id })
      end

      def page(payload = {})
        @http.post("/files/page", payload)
      end

      def contents(file_id:, disposition: "attachment")
        @http.post_binary_json("/files/contents", { file_id: file_id, disposition: disposition })
      end

      def delete(file_id:)
        @http.post("/files/delete", { file_id: file_id })
      end
    end
  end
end
