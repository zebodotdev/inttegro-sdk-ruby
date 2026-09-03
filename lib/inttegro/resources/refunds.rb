# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Refunds
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_resource("/refunds/create", Inttegro::Refund, :refund, payload)
      end

      def cancel(refund_id:)
        @http.post_resource(
          "/refunds/cancel",
          Inttegro::Refund, :refund,
          { refund_id: refund_id }
        )
      end

      def lookup(refund_id:)
        @http.post_resource(
          "/refunds/lookup",
          Inttegro::Refund, :refund,
          { refund_id: refund_id }
        )
      end

      def page(payload)
        @http.post_resource("/refunds/page", Inttegro::RefundPage, :page, payload)
      end
    end
  end
end
