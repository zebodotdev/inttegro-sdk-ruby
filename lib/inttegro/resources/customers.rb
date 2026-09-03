# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Customers
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_resource("/customers/create", Inttegro::Customer, :customer, payload)
      end

      def update(payload)
        @http.post_resource("/customers/update", Inttegro::Customer, :customer, payload)
      end

      def lookup(customer_id:)
        @http.post_resource("/customers/lookup", Inttegro::Customer, :customer, { customer_id: customer_id })
      end

      def page(payload = {})
        @http.post_resource("/customers/page", Inttegro::CustomerPage, :page, payload || {})
      end
    end
  end
end
