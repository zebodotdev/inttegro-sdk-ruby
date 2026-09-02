# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Chimes
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def send(payload)
        @http.post_model("/chimes/send", Inttegro::ChimeResponse, payload)
      end

      def lookup(chime_id:)
        @http.post_model("/chimes/lookup", Inttegro::ChimeResponse, { chime_id: chime_id })
      end

      def page(payload = {})
        @http.post_model("/chimes/page", Inttegro::PageChimesResponse, payload || {})
      end

      def schedule(payload)
        @http.post_model("/chimes/schedule", Inttegro::ScheduleResponse, payload)
      end

      def broadcast(payload)
        @http.post_model("/chimes/broadcast", Inttegro::BroadcastResponse, payload)
      end
    end
  end
end
