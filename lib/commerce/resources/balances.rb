# frozen_string_literal: true

module Commerce
  module Resources
    class Balances
      def initialize(http)
        @http = http
      end

      def get
        @http.post("/balances", {})
      end
    end
  end
end
