# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Broadcasts
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def lookup(broadcast_id:)
        @http.post_resource("/broadcasts/lookup", Inttegro::BroadcastDetail, :broadcast,
          { broadcast_id: broadcast_id }
        )
      end

      def cancel(broadcast_id:)
        @http.post_resource("/broadcasts/cancel", Inttegro::BroadcastCancelDetail, :broadcast,
          { broadcast_id: broadcast_id }
        )
      end
    end
  end
end
