# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class PurchaseIntents
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_resource("/purchase_intents/create", Inttegro::PurchaseIntent, :purchase_intent, payload)
      end

      def update(payload)
        @http.post_resource("/purchase_intents/update", Inttegro::PurchaseIntent, :purchase_intent, payload)
      end

      def cancel(id:)
        @http.post_resource(
          "/purchase_intents/cancel",
          Inttegro::PurchaseIntent, :purchase_intent,
          { id: id }
        )
      end

      def lookup(id:)
        @http.post_resource(
          "/purchase_intents/lookup",
          Inttegro::PurchaseIntent, :purchase_intent,
          { id: id }
        )
      end

      def page(payload = {})
        @http.post_resource(
          "/purchase_intents/page",
          Inttegro::PurchaseIntentPage, :page,
          payload || {}
        )
      end
    end
  end
end
