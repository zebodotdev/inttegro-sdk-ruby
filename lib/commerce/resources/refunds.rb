# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Refunds
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload)
        @http.post_model("/refunds/create", Commerce::Models::RefundResponse, payload)
      end

      def cancel(refund_id:)
        @http.post_model(
          "/refunds/cancel",
          Commerce::Models::RefundResponse,
          { refund_id: refund_id }
        )
      end

      def lookup(refund_id:)
        @http.post_model(
          "/refunds/lookup",
          Commerce::Models::RefundResponse,
          { refund_id: refund_id }
        )
      end

      def page(payload)
        @http.post_model("/refunds/page", Commerce::Models::RefundPageResponse, payload)
      end
    end
  end
end
