# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Schedules
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def lookup(schedule_id:)
        @http.post_model(
          "/schedules/lookup",
          Commerce::Models::ScheduleLookupResponse,
          { schedule_id: schedule_id }
        )
      end

      def cancel(schedule_id:)
        @http.post_model(
          "/schedules/cancel",
          Commerce::Models::ScheduleCancelResponse,
          { schedule_id: schedule_id }
        )
      end
    end
  end
end
