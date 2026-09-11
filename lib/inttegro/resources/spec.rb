# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Read-only client for public country and financial-institution specifications.
    #
    # Access this resource through {Inttegro::Client#spec}.
    class Spec
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Retrieve supported countries, currencies, payment methods, banks, and providers.
      #
      # @return [Inttegro::Shared::CountrySpecifications] country specifications
      def countries
        @http.post_model("/spec/countries", Inttegro::Shared::CountrySpecifications, {})
      end
    end
  end
end
