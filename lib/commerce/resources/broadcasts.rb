# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Broadcasts
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def lookup(broadcast_id:)
        @http.post_model(
          "/broadcasts/lookup",
          Commerce::Models::LookupBroadcastResponse,
          { broadcast_id: broadcast_id }
        )
      end

      def cancel(broadcast_id:)
        @http.post_model(
          "/broadcasts/cancel",
          Commerce::Models::BroadcastCancelResponse,
          { broadcast_id: broadcast_id }
        )
      end
    end
  end
end
