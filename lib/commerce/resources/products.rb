# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Products
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload)
        @http.post_model("/products/create", Commerce::Models::ProductResponse, payload)
      end

      def add_price(payload)
        @http.post_model("/products/add_price", Commerce::Models::AddProductPriceResponse, payload)
      end

      def set_default_unit_price(payload)
        @http.post_model("/products/set_default_unit_price", Commerce::Models::ProductResponse, payload)
      end

      def lookup(product_id:)
        @http.post_model("/products/lookup", Commerce::Models::ProductResponse, { product_id: product_id })
      end

      def update(payload)
        @http.post_model("/products/update", Commerce::Models::UpdateProductResponse, payload)
      end

      def publish(product_id:)
        @http.post_model("/products/publish", Commerce::Models::ProductResponse, { product_id: product_id })
      end

      def unpublish(product_id:)
        @http.post_model("/products/unpublish", Commerce::Models::ProductResponse, { product_id: product_id })
      end

      def archive(product_id:)
        @http.post_model("/products/archive", Commerce::Models::ProductResponse, { product_id: product_id })
      end

      def page(payload = {})
        @http.post_model("/products/page", Commerce::Models::PageProductsResponse, payload || {})
      end
    end
  end
end
