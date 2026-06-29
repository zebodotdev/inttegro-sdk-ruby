# frozen_string_literal: true

module Commerce
  module Resources
    class Otp
      def initialize(http)
        @http = http
      end

      def initiate(payload)
        @http.post("/otp/initiate", payload)
      end

      alias_method :initialize_session, :initiate

      def verify(payload)
        @http.post("/otp/verify", payload)
      end

      def lookup(payload)
        @http.post("/otp/lookup", payload)
      end

      def cancel(payload)
        @http.post("/otp/cancel", payload)
      end
    end
  end
end
