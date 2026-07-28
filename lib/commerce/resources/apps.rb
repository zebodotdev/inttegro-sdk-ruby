# frozen_string_literal: true

module Commerce
  module Resources
    class Apps
      def initialize(http)
        @http = http
      end

      def create(payload)
        @http.post("/apps/create", payload)
      end

      def lookup
        @http.post("/apps/lookup", {})
      end

      def update(payload)
        @http.post("/apps/update", payload)
      end
    end
  end
end
