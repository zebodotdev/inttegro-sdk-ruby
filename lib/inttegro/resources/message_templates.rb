# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class MessageTemplates
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload, idempotency_key: nil)
        @http.post_model(
          "/message_templates/create",
          Inttegro::MessageTemplateEnvelope,
          payload,
          headers: idempotency_headers(idempotency_key)
        )
      end

      def update(payload, idempotency_key: nil)
        @http.post_model(
          "/message_templates/update",
          Inttegro::MessageTemplateEnvelope,
          payload,
          headers: idempotency_headers(idempotency_key)
        )
      end

      def publish(template_id:, idempotency_key: nil)
        @http.post_model(
          "/message_templates/publish",
          Inttegro::MessageTemplateEnvelope,
          { id: template_id },
          headers: idempotency_headers(idempotency_key)
        )
      end

      def archive(template_id:, idempotency_key: nil)
        @http.post_model(
          "/message_templates/archive",
          Inttegro::MessageTemplateEnvelope,
          { id: template_id },
          headers: idempotency_headers(idempotency_key)
        )
      end

      def lookup(template_id:)
        @http.post_model(
          "/message_templates/lookup",
          Inttegro::MessageTemplateEnvelope,
          { id: template_id }
        )
      end

      def page(payload = {})
        @http.post_model(
          "/message_templates/page",
          Inttegro::MessageTemplatesPageEnvelope,
          payload || {}
        )
      end

      def render_preview(payload)
        @http.post_model(
          "/message_templates/render_preview",
          Inttegro::RenderMessageTemplatePreviewResponse,
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
