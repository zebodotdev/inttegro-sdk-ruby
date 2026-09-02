# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Apps
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_model("/apps/create", Inttegro::CreateApplicationResponse, payload)
      end

      def lookup
        @http.post_model("/apps/lookup", Inttegro::LookupApplicationResponse, {})
      end

      def update(payload)
        @http.post_model("/apps/update", Inttegro::UpdateApplicationResponse, payload)
      end
    end
  end
end
