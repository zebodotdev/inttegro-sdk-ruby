# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Chimes
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def send(payload)
        @http.post_resource("/chimes/send", Inttegro::Chime, :chime, payload)
      end

      def lookup(chime_id:)
        @http.post_resource("/chimes/lookup", Inttegro::Chime, :chime, { chime_id: chime_id })
      end

      def page(payload = {})
        @http.post_resource("/chimes/page", Inttegro::ChimePage, :page, payload || {})
      end

      def schedule(payload)
        @http.post_resource("/chimes/schedule", Inttegro::ScheduleCreationDetail, :scheduled_chime, payload)
      end

      def broadcast(payload)
        @http.post_resource("/chimes/broadcast", Inttegro::BroadcastCreationDetail, :broadcast, payload)
      end
    end
  end
end
