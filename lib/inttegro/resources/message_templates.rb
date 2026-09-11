# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for reusable, app-scoped SMS and email message templates.
    #
    # Access this resource through {Inttegro::Client#message_templates}.
    class MessageTemplates
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a reusable message template.
      #
      # @param payload [Hash, Inttegro::MessageTemplate::CreateRequest] channel, content, and variable fields
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::MessageTemplate] created template
      def create(payload, idempotency_key: nil)
        @http.post_resource(
          "/message_templates/create",
          Inttegro::MessageTemplate, :message_template,
          payload,
          headers: idempotency_headers(idempotency_key)
        )
      end

      # Update a template and create a new draft version.
      #
      # @param payload [Hash, Inttegro::MessageTemplate::UpdateRequest] template identifier and fields to change
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::MessageTemplate] updated template
      def update(payload, idempotency_key: nil)
        @http.post_resource(
          "/message_templates/update",
          Inttegro::MessageTemplate, :message_template,
          payload,
          headers: idempotency_headers(idempotency_key)
        )
      end

      # Publish the current draft version of a template.
      #
      # @param template_id [String] unique template identifier
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::MessageTemplate] published template
      def publish(template_id:, idempotency_key: nil)
        @http.post_resource(
          "/message_templates/publish",
          Inttegro::MessageTemplate, :message_template,
          { id: template_id },
          headers: idempotency_headers(idempotency_key)
        )
      end

      # Archive a template so it cannot be changed or used for new sends.
      #
      # @param template_id [String] unique template identifier
      # @param idempotency_key [String, nil] explicit key for safely retrying this logical write
      # @return [Inttegro::MessageTemplate] archived template
      def archive(template_id:, idempotency_key: nil)
        @http.post_resource(
          "/message_templates/archive",
          Inttegro::MessageTemplate, :message_template,
          { id: template_id },
          headers: idempotency_headers(idempotency_key)
        )
      end

      # Retrieve a message template by identifier.
      #
      # @param template_id [String] unique template identifier
      # @return [Inttegro::MessageTemplate] matching template
      def lookup(template_id:)
        @http.post_resource(
          "/message_templates/lookup",
          Inttegro::MessageTemplate, :message_template,
          { id: template_id }
        )
      end

      # Retrieve templates in newest-updated order.
      #
      # @param payload [Hash, Inttegro::MessageTemplate::PageRequest] pagination and filter fields
      # @return [Inttegro::MessageTemplate::Page] typed page of templates
      def page(payload = {})
        @http.post_resource(
          "/message_templates/page",
          Inttegro::MessageTemplate::Page, :page,
          payload || {}
        )
      end

      # Render a draft-aware preview using the supplied variable values.
      #
      # @param payload [Hash, Inttegro::MessageTemplate::RenderPreviewRequest] template and preview variables
      # @return [Inttegro::MessageTemplate::Preview] rendered preview and safety information
      def render_preview(payload)
        @http.post_model("/message_templates/render_preview", Inttegro::MessageTemplate::Preview,
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
