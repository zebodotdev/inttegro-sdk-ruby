# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Customers
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload)
        @http.post_model("/customers/create", Commerce::Models::CustomerResponse, payload)
      end

      def update(payload)
        @http.post_model("/customers/update", Commerce::Models::CustomerResponse, payload)
      end

      def lookup(customer_id:)
        @http.post_model("/customers/lookup", Commerce::Models::CustomerResponse, { customer_id: customer_id })
      end

      def page(payload = {})
        @http.post_model("/customers/page", Commerce::Models::PageCustomersResponse, payload || {})
      end
    end
  end
end
