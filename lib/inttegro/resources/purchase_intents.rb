# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class PurchaseIntents
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_model("/purchase_intents/create", Inttegro::PurchaseIntentResponse, payload)
      end

      def update(payload)
        @http.post_model("/purchase_intents/update", Inttegro::PurchaseIntentResponse, payload)
      end

      def cancel(id:)
        @http.post_model(
          "/purchase_intents/cancel",
          Inttegro::PurchaseIntentResponse,
          { id: id }
        )
      end

      def lookup(id:)
        @http.post_model(
          "/purchase_intents/lookup",
          Inttegro::PurchaseIntentResponse,
          { id: id }
        )
      end

      def page(payload = {})
        @http.post_model(
          "/purchase_intents/page",
          Inttegro::PagePurchaseIntentsResponse,
          payload || {}
        )
      end
    end
  end
end
