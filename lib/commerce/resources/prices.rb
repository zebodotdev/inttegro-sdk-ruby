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

      def page(payload = {})
        @http.post("/prices/page", payload || {})
      end

      def update(payload)
        @http.post("/prices/update", payload)
      end

      def activate(price_id:)
        @http.post("/prices/activate", { price_id: price_id })
      end

      def deactivate(price_id:)
        @http.post("/prices/deactivate", { price_id: price_id })
      end
    end
  end
end
