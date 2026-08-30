# frozen_string_literal: true

module Commerce
  module Resources
    class PurchaseIntents
      def initialize(http)
        @http = http
      end

      def create(payload)
        @http.post("/purchase_intents/create", payload)
      end

      def update(payload)
        @http.post("/purchase_intents/update", payload)
      end

      def cancel(id:)
        @http.post("/purchase_intents/cancel", { id: id })
      end

      def lookup(id:)
        @http.post("/purchase_intents/lookup", { id: id })
      end

      def page(payload = {})
        @http.post("/purchase_intents/page", payload || {})
      end
    end
  end
end
