# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Prices
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_resource("/prices/create", Inttegro::Price, :price, payload)
      end

      def lookup(price_id:)
        @http.post_resource("/prices/lookup", Inttegro::Price, :price, { price_id: price_id })
      end

      def page(payload = {})
        @http.post_resource("/prices/page", Inttegro::PricePage, :page, payload || {})
      end

      def update(payload)
        @http.post_resource("/prices/update", Inttegro::Price, :price, payload)
      end

      def activate(price_id:)
        @http.post_resource("/prices/activate", Inttegro::Price, :price, { price_id: price_id })
      end

      def deactivate(price_id:)
        @http.post_resource("/prices/deactivate", Inttegro::Price, :price, { price_id: price_id })
      end

      def archive(price_id:)
        @http.post_resource("/prices/archive", Inttegro::Price, :price, { price_id: price_id })
      end
    end
  end
end
