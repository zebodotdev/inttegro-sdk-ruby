# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Apps
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_model("/apps/create", Inttegro::Models::CreateApplicationResponse, payload)
      end

      def lookup
        @http.post_model("/apps/lookup", Inttegro::Models::LookupApplicationResponse, {})
      end

      def update(payload)
        @http.post_model("/apps/update", Inttegro::Models::UpdateApplicationResponse, payload)
      end
    end
  end
end
