# frozen_string_literal: true

module Commerce
  module Resources
    class Broadcasts
      def initialize(http)
        @http = http
      end

      def lookup(broadcast_id:)
        @http.post("/broadcasts/lookup", { broadcast_id: broadcast_id })
      end

      def cancel(broadcast_id:)
        @http.post("/broadcasts/cancel", { broadcast_id: broadcast_id })
      end
    end
  end
end
