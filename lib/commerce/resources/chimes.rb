# frozen_string_literal: true

module Commerce
  module Resources
    class Chimes
      def initialize(http)
        @http = http
      end

      def send(payload)
        @http.post("/chimes/send", payload)
      end

      def lookup(chime_id:)
        @http.post("/chimes/lookup", { chime_id: chime_id })
      end

      def schedule(payload)
        @http.post("/chimes/schedule", payload)
      end
    end
  end
end
