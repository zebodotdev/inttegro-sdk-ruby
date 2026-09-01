# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Prices
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload)
        @http.post_model("/prices/create", Commerce::Models::PriceResponse, payload)
      end

      def lookup(price_id:)
        @http.post_model("/prices/lookup", Commerce::Models::PriceResponse, { price_id: price_id })
      end

      def page(payload = {})
        @http.post_model("/prices/page", Commerce::Models::PricePageResponse, payload || {})
      end

      def update(payload)
        @http.post_model("/prices/update", Commerce::Models::PriceResponse, payload)
      end

      def activate(price_id:)
        @http.post_model("/prices/activate", Commerce::Models::PriceResponse, { price_id: price_id })
      end

      def deactivate(price_id:)
        @http.post_model("/prices/deactivate", Commerce::Models::PriceResponse, { price_id: price_id })
      end

      def archive(price_id:)
        @http.post_model("/prices/archive", Commerce::Models::PriceResponse, { price_id: price_id })
      end
    end
  end
end
