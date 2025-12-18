# frozen_string_literal: true

module Commerce
  module Resources
    class Orders
      def initialize(http)
        @http = http
      end

      def create(payload)
        @http.post("/orders/new", payload)
      end

      def lookup(order_id:, **options)
        body = { order_id: order_id }.merge(options)
        @http.post("/orders/lookup", body)
      end

      def pay(payload)
        @http.post("/orders/pay", payload)
      end

      def confirm_payment(payload)
        @http.post("/orders/confirm_payment", payload)
      end

      def request_confirmation(order_id:)
        @http.post("/orders/request_confirmation", { order_id: order_id })
      end

      def finalize(order_id:)
        @http.post("/orders/finalize", { order_id: order_id })
      end

      def complete(payload)
        @http.post("/orders/complete", payload)
      end

      def cancel(order_id:)
        @http.post("/orders/cancel", { order_id: order_id })
      end

      def refund(order_id:)
        @http.post("/orders/refund", { order_id: order_id })
      end

      def page(payload = {})
        @http.post("/orders/page", payload || {})
      end
    end
  end
end
