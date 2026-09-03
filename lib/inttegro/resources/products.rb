# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Products
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_resource("/products/create", Inttegro::Product, :product, payload)
      end

      def add_price(payload)
        @http.post_resource("/products/add_price", Inttegro::ProductPriceNominal, :price, payload)
      end

      def set_default_unit_price(payload)
        @http.post_resource("/products/set_default_unit_price", Inttegro::Product, :product, payload)
      end

      def lookup(product_id:)
        @http.post_resource("/products/lookup", Inttegro::Product, :product, { product_id: product_id })
      end

      def update(payload)
        @http.post_resource("/products/update", Inttegro::UpdatedProduct, :product, payload)
      end

      def publish(product_id:)
        @http.post_resource("/products/publish", Inttegro::Product, :product, { product_id: product_id })
      end

      def unpublish(product_id:)
        @http.post_resource("/products/unpublish", Inttegro::Product, :product, { product_id: product_id })
      end

      def archive(product_id:)
        @http.post_resource("/products/archive", Inttegro::Product, :product, { product_id: product_id })
      end

      def page(payload = {})
        @http.post_resource("/products/page", Inttegro::ProductPage, :page, payload || {})
      end
    end
  end
end
