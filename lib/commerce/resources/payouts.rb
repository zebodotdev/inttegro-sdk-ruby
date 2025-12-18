# frozen_string_literal: true

module Commerce
  module Resources
    class Payouts
      def initialize(http)
        @http = http
      end

      def set_destinations(destinations:)
        @http.post("/payouts/set_destinations", { destinations: destinations })
      end

      def settings
        @http.post("/payouts/settings", {})
      end

      def disable_automatic
        @http.post("/payouts/disable", {})
      end

      def enable_fx
        @http.post("/payouts/enable_fx", {})
      end

      def disable_fx
        @http.post("/payouts/disable_fx", {})
      end

      def page(payload = {})
        @http.post("/payouts/page", payload || {})
      end
    end
  end
end
