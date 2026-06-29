# frozen_string_literal: true

module Commerce
  module Resources
    class Platform
      def initialize(http)
        @http = http
      end

      def create_app(payload)
        @http.post("/apps/create", payload)
      end

      def generate_key(payload)
        @http.post("/keys/generate", payload)
      end

      def new_session(payload)
        @http.post("/sessions/new", payload)
      end
    end
  end
end
