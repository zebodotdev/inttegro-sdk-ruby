# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Customers
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_model("/customers/create", Inttegro::CustomerResponse, payload)
      end

      def update(payload)
        @http.post_model("/customers/update", Inttegro::CustomerResponse, payload)
      end

      def lookup(customer_id:)
        @http.post_model("/customers/lookup", Inttegro::CustomerResponse, { customer_id: customer_id })
      end

      def page(payload = {})
        @http.post_model("/customers/page", Inttegro::PageCustomersResponse, payload || {})
      end
    end
  end
end
