# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Prices
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_model("/prices/create", Inttegro::Models::PriceResponse, payload)
      end

      def lookup(price_id:)
        @http.post_model("/prices/lookup", Inttegro::Models::PriceResponse, { price_id: price_id })
      end

      def page(payload = {})
        @http.post_model("/prices/page", Inttegro::Models::PricePageResponse, payload || {})
      end

      def update(payload)
        @http.post_model("/prices/update", Inttegro::Models::PriceResponse, payload)
      end

      def activate(price_id:)
        @http.post_model("/prices/activate", Inttegro::Models::PriceResponse, { price_id: price_id })
      end

      def deactivate(price_id:)
        @http.post_model("/prices/deactivate", Inttegro::Models::PriceResponse, { price_id: price_id })
      end

      def archive(price_id:)
        @http.post_model("/prices/archive", Inttegro::Models::PriceResponse, { price_id: price_id })
      end
    end
  end
end
