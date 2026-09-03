# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Spec
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def countries
        @http.post_model("/spec/countries", Inttegro::CountrySpecifications, {})
      end
    end
  end
end
