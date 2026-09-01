# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Products
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_model("/products/create", Inttegro::Models::ProductResponse, payload)
      end

      def add_price(payload)
        @http.post_model("/products/add_price", Inttegro::Models::AddProductPriceResponse, payload)
      end

      def set_default_unit_price(payload)
        @http.post_model("/products/set_default_unit_price", Inttegro::Models::ProductResponse, payload)
      end

      def lookup(product_id:)
        @http.post_model("/products/lookup", Inttegro::Models::ProductResponse, { product_id: product_id })
      end

      def update(payload)
        @http.post_model("/products/update", Inttegro::Models::UpdateProductResponse, payload)
      end

      def publish(product_id:)
        @http.post_model("/products/publish", Inttegro::Models::ProductResponse, { product_id: product_id })
      end

      def unpublish(product_id:)
        @http.post_model("/products/unpublish", Inttegro::Models::ProductResponse, { product_id: product_id })
      end

      def archive(product_id:)
        @http.post_model("/products/archive", Inttegro::Models::ProductResponse, { product_id: product_id })
      end

      def page(payload = {})
        @http.post_model("/products/page", Inttegro::Models::PageProductsResponse, payload || {})
      end
    end
  end
end
