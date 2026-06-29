# frozen_string_literal: true

module Commerce
  module Resources
    class Products
      def initialize(http)
        @http = http
      end

      def create(payload)
        @http.post("/products/create", payload)
      end

      def add_price(payload)
        @http.post("/products/add_price", payload)
      end

      def set_default_unit_price(payload)
        @http.post("/products/set_default_unit_price", payload)
      end

      def lookup(product_id:)
        @http.post("/products/lookup", { product_id: product_id })
      end

      def update(payload)
        @http.post("/products/update", payload)
      end

      def publish(product_id:)
        @http.post("/products/publish", { product_id: product_id })
      end

      def unpublish(product_id:)
        @http.post("/products/unpublish", { product_id: product_id })
      end

      def archive(product_id:)
        @http.post("/products/archive", { product_id: product_id })
      end

      def page(payload = {})
        @http.post("/products/page", payload)
      end
    end
  end
end
