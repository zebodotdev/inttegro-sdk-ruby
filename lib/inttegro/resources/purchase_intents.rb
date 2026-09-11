# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for controlled, shareable purchase intents and hosted Buy links.
    #
    # Access this resource through {Inttegro::Client#purchase_intents}.
    class PurchaseIntents
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a purchase intent for a catalog product.
      #
      # @param payload [Hash, Inttegro::PurchaseIntent::CreateRequest] offer, quantity, and usage fields
      # @return [Inttegro::PurchaseIntent] created purchase intent
      def create(payload)
        @http.post_resource("/purchase_intents/create", Inttegro::PurchaseIntent, :purchase_intent, payload)
      end

      # Change mutable quantity or expiry fields on a purchase intent.
      #
      # @param payload [Hash, Inttegro::PurchaseIntent::UpdateRequest] purchase intent identifier and changes
      # @return [Inttegro::PurchaseIntent] updated purchase intent
      def update(payload)
        @http.post_resource("/purchase_intents/update", Inttegro::PurchaseIntent, :purchase_intent, payload)
      end

      # Stop a purchase intent from creating new orders.
      #
      # @param id [String] unique purchase intent identifier
      # @return [Inttegro::PurchaseIntent] canceled purchase intent
      def cancel(id:)
        @http.post_resource(
          "/purchase_intents/cancel",
          Inttegro::PurchaseIntent, :purchase_intent,
          { id: id }
        )
      end

      # Retrieve a purchase intent by its opaque identifier.
      #
      # @param id [String] unique purchase intent identifier
      # @return [Inttegro::PurchaseIntent] matching purchase intent
      def lookup(id:)
        @http.post_resource(
          "/purchase_intents/lookup",
          Inttegro::PurchaseIntent, :purchase_intent,
          { id: id }
        )
      end

      # Retrieve purchase intents in newest-first order.
      #
      # @param payload [Hash, Inttegro::PurchaseIntent::PageRequest] pagination and filter fields
      # @return [Inttegro::PurchaseIntent::Page] typed page of purchase intents
      def page(payload = {})
        @http.post_resource(
          "/purchase_intents/page",
          Inttegro::PurchaseIntent::Page, :page,
          payload || {}
        )
      end
    end
  end
end
