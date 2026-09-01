# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class MessageTemplates
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload, idempotency_key: nil)
        @http.post_model(
          "/message_templates/create",
          Commerce::Models::MessageTemplateEnvelope,
          payload,
          headers: idempotency_headers(idempotency_key)
        )
      end

      def update(payload, idempotency_key: nil)
        @http.post_model(
          "/message_templates/update",
          Commerce::Models::MessageTemplateEnvelope,
          payload,
          headers: idempotency_headers(idempotency_key)
        )
      end

      def publish(template_id:, idempotency_key: nil)
        @http.post_model(
          "/message_templates/publish",
          Commerce::Models::MessageTemplateEnvelope,
          { id: template_id },
          headers: idempotency_headers(idempotency_key)
        )
      end

      def archive(template_id:, idempotency_key: nil)
        @http.post_model(
          "/message_templates/archive",
          Commerce::Models::MessageTemplateEnvelope,
          { id: template_id },
          headers: idempotency_headers(idempotency_key)
        )
      end

      def lookup(template_id:)
        @http.post_model(
          "/message_templates/lookup",
          Commerce::Models::MessageTemplateEnvelope,
          { id: template_id }
        )
      end

      def page(payload = {})
        @http.post_model(
          "/message_templates/page",
          Commerce::Models::MessageTemplatesPageEnvelope,
          payload || {}
        )
      end

      def render_preview(payload)
        @http.post_model(
          "/message_templates/render_preview",
          Commerce::Models::RenderMessageTemplatePreviewResponse,
          payload
        )
      end

      private

      def idempotency_headers(idempotency_key)
        idempotency_key.to_s.strip.empty? ? {} : { "Idempotency-Key" => idempotency_key }
      end
    end
  end
end
