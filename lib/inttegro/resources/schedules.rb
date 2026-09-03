# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Schedules
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def lookup(schedule_id:)
        @http.post_resource(
          "/schedules/lookup",
          Inttegro::ScheduleDetail, :scheduled_chime,
          { schedule_id: schedule_id }
        )
      end

      def cancel(schedule_id:)
        @http.post_resource(
          "/schedules/cancel",
          Inttegro::ScheduleCancelDetail, :scheduled_chime,
          { schedule_id: schedule_id }
        )
      end
    end
  end
end
