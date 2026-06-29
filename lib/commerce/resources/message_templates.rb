# frozen_string_literal: true

require "securerandom"

module Commerce
  module Resources
    class MessageTemplates
      def initialize(http)
        @http = http
      end

      def create(payload, idempotency_key: nil)
        @http.post_with_headers(
          "/message_templates/create",
          payload,
          headers: idempotency_headers(idempotency_key)
        )
      end

      def update(payload, idempotency_key: nil)
        @http.post_with_headers(
          "/message_templates/update",
          payload,
          headers: idempotency_headers(idempotency_key)
        )
      end

      def publish(template_id:, idempotency_key: nil)
        @http.post_with_headers(
          "/message_templates/publish",
          { id: template_id },
          headers: idempotency_headers(idempotency_key)
        )
      end

      def archive(template_id:, idempotency_key: nil)
        @http.post_with_headers(
          "/message_templates/archive",
          { id: template_id },
          headers: idempotency_headers(idempotency_key)
        )
      end

      def lookup(template_id:)
        @http.post("/message_templates/lookup", { id: template_id })
      end

      def page(payload = {})
        @http.post("/message_templates/page", payload || {})
      end

      def render_preview(payload)
        @http.post("/message_templates/render_preview", payload)
      end

      private

      def idempotency_headers(idempotency_key)
        { "Idempotency-Key" => idempotency_key || SecureRandom.uuid }
      end
    end
  end
end
