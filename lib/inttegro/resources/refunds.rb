# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Refunds
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_model("/refunds/create", Inttegro::RefundResponse, payload)
      end

      def cancel(refund_id:)
        @http.post_model(
          "/refunds/cancel",
          Inttegro::RefundResponse,
          { refund_id: refund_id }
        )
      end

      def lookup(refund_id:)
        @http.post_model(
          "/refunds/lookup",
          Inttegro::RefundResponse,
          { refund_id: refund_id }
        )
      end

      def page(payload)
        @http.post_model("/refunds/page", Inttegro::RefundPageResponse, payload)
      end
    end
  end
end
