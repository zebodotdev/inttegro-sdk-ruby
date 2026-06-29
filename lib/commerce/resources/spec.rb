# frozen_string_literal: true

module Commerce
  module Resources
    class Spec
      def initialize(http)
        @http = http
      end

      def countries
        @http.post("/spec/countries", {})
      end
    end
  end
end
