# frozen_string_literal: true

module Commerce
  module Resources
    class PaymentMethods
      def initialize(http)
        @http = http
      end

      def tokenize(payload)
        @http.post("/payment_methods/tokenize", payload)
      end

      def verify(payment_method_id:)
        @http.post("/payment_methods/verify", { payment_method_id: payment_method_id })
      end

      def confirm_verification(payload)
        @http.post("/payment_methods/confirm_verification", payload)
      end

      def lookup(payment_method_id:)
        @http.post("/payment_methods/lookup", { payment_method_id: payment_method_id })
      end

      def delete(payment_method_id:)
        @http.post("/payment_methods/delete", { payment_method_id: payment_method_id })
      end

      def settings
        @http.post("/payment_methods/settings", {})
      end
    end
  end
end
