# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for catalog prices and their lifecycle.
    #
    # Access this resource through {Inttegro::Client#prices}.
    class Prices
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a catalog price.
      #
      # @param payload [Hash, Inttegro::Price::CatalogPriceParams] amount and optional price metadata
      # @return [Inttegro::Price::CatalogPrice] created price
      def create(payload)
        @http.post_resource("/prices/create", Inttegro::Price::CatalogPrice, :price, payload)
      end

      # Retrieve one catalog price.
      #
      # @param price_id [String] unique price identifier
      # @return [Inttegro::Price::CatalogPrice] matching price
      def lookup(price_id:)
        @http.post_resource("/prices/lookup", Inttegro::Price::CatalogPrice, :price, { price_id: price_id })
      end

      # Retrieve a page of catalog prices.
      #
      # @param payload [Hash, Inttegro::Price::PageRequest] pagination and filter fields
      # @return [Inttegro::Price::Page] typed page of prices
      def page(payload = {})
        @http.post_resource("/prices/page", Inttegro::Price::Page, :page, payload || {})
      end

      # Update mutable price metadata.
      #
      # @param payload [Hash, Inttegro::Price::UpdateRequest] price identifier and fields to change
      # @return [Inttegro::Price::CatalogPrice] updated price
      def update(payload)
        @http.post_resource("/prices/update", Inttegro::Price::CatalogPrice, :price, payload)
      end

      # Reactivate an inactive price.
      #
      # @param price_id [String] unique price identifier
      # @return [Inttegro::Price::CatalogPrice] activated price
      def activate(price_id:)
        @http.post_resource("/prices/activate", Inttegro::Price::CatalogPrice, :price, { price_id: price_id })
      end

      # Deactivate a price for new active catalog flows.
      #
      # @param price_id [String] unique price identifier
      # @return [Inttegro::Price::CatalogPrice] deactivated price
      def deactivate(price_id:)
        @http.post_resource("/prices/deactivate", Inttegro::Price::CatalogPrice, :price, { price_id: price_id })
      end

      # Archive a price and mark it inactive.
      #
      # @param price_id [String] unique price identifier
      # @return [Inttegro::Price::CatalogPrice] archived price
      def archive(price_id:)
        @http.post_resource("/prices/archive", Inttegro::Price::CatalogPrice, :price, { price_id: price_id })
      end
    end
  end
end
