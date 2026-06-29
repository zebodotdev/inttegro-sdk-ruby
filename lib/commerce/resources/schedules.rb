# frozen_string_literal: true

module Commerce
  module Resources
    class Schedules
      def initialize(http)
        @http = http
      end

      def lookup(schedule_id:)
        @http.post("/schedules/lookup", { schedule_id: schedule_id })
      end

      def cancel(schedule_id:)
        @http.post("/schedules/cancel", { schedule_id: schedule_id })
      end
    end
  end
end
