# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Chimes
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def send(payload)
        @http.post_model("/chimes/send", Commerce::Models::ChimeResponse, payload)
      end

      def lookup(chime_id:)
        @http.post_model("/chimes/lookup", Commerce::Models::ChimeResponse, { chime_id: chime_id })
      end

      def page(payload = {})
        @http.post_model("/chimes/page", Commerce::Models::PageChimesResponse, payload || {})
      end

      def schedule(payload)
        @http.post_model("/chimes/schedule", Commerce::Models::ScheduleResponse, payload)
      end

      def broadcast(payload)
        @http.post_model("/chimes/broadcast", Commerce::Models::BroadcastResponse, payload)
      end
    end
  end
end
