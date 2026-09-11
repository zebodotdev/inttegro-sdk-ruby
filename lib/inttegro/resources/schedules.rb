# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for observing and canceling scheduled Chimes.
    #
    # Access this resource through {Inttegro::Client#schedules}.
    class Schedules
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Retrieve one scheduled Chime.
      #
      # @param schedule_id [String] unique schedule identifier
      # @return [Inttegro::Schedule::Detail] schedule details
      def lookup(schedule_id:)
        @http.post_resource(
          "/schedules/lookup",
          Inttegro::Schedule::Detail, :scheduled_chime,
          { schedule_id: schedule_id }
        )
      end

      # Request cancellation of a Chime schedule that has not won its execution race.
      #
      # @param schedule_id [String] unique schedule identifier
      # @return [Inttegro::Schedule::CancelDetail] resulting cancellation details
      def cancel(schedule_id:)
        @http.post_resource(
          "/schedules/cancel",
          Inttegro::Schedule::CancelDetail, :scheduled_chime,
          { schedule_id: schedule_id }
        )
      end
    end
  end
end
