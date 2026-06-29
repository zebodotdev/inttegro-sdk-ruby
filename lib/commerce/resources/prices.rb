# frozen_string_literal: true

module Commerce
  module Resources
    class Prices
      def initialize(http)
        @http = http
      end

      def create(payload)
        @http.post("/prices/create", payload)
      end

      def lookup(price_id:)
        @http.post("/prices/lookup", { price_id: price_id })
      end

      def update(payload)
        @http.post("/prices/update", payload)
      end
    end
  end
end
