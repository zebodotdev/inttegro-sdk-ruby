# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class PurchaseIntents
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload)
        @http.post_model("/purchase_intents/create", Commerce::Models::PurchaseIntentResponse, payload)
      end

      def update(payload)
        @http.post_model("/purchase_intents/update", Commerce::Models::PurchaseIntentResponse, payload)
      end

      def cancel(id:)
        @http.post_model(
          "/purchase_intents/cancel",
          Commerce::Models::PurchaseIntentResponse,
          { id: id }
        )
      end

      def lookup(id:)
        @http.post_model(
          "/purchase_intents/lookup",
          Commerce::Models::PurchaseIntentResponse,
          { id: id }
        )
      end

      def page(payload = {})
        @http.post_model(
          "/purchase_intents/page",
          Commerce::Models::PagePurchaseIntentsResponse,
          payload || {}
        )
      end
    end
  end
end
