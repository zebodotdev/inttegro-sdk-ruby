# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for observing and canceling asynchronous Chime broadcasts.
    #
    # Access this resource through {Inttegro::Client#broadcasts}.
    class Broadcasts
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Retrieve a broadcast and its current delivery state.
      #
      # @param broadcast_id [String] unique broadcast identifier
      # @return [Inttegro::Broadcast::Detail] broadcast details
      def lookup(broadcast_id:)
        @http.post_resource("/broadcasts/lookup", Inttegro::Broadcast::Detail, :broadcast,
          { broadcast_id: broadcast_id }
        )
      end

      # Request cancellation of a broadcast that has not won its execution race.
      #
      # @param broadcast_id [String] unique broadcast identifier
      # @return [Inttegro::Broadcast::CancelDetail] resulting cancellation details
      def cancel(broadcast_id:)
        @http.post_resource("/broadcasts/cancel", Inttegro::Broadcast::CancelDetail, :broadcast,
          { broadcast_id: broadcast_id }
        )
      end
    end
  end
end
