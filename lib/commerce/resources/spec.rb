# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Spec
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def countries
        @http.post_model("/spec/countries", Commerce::Models::ListCountrySpecsResponse, {})
      end
    end
  end
end
