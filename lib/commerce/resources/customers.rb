# frozen_string_literal: true

module Commerce
  module Resources
    class Customers
      def initialize(http)
        @http = http
      end

      def create(payload)
        @http.post("/customers/create", payload)
      end

      def lookup(customer_id:)
        @http.post("/customers/lookup", { customer_id: customer_id })
      end

      def page(payload = {})
        @http.post("/customers/page", payload || {})
      end
    end
  end
end
