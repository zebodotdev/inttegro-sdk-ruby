# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Apps
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def create(payload)
        @http.post_resource("/apps/create", Inttegro::Application, :app, payload)
      end

      def lookup
        @http.post_resource("/apps/lookup", Inttegro::Application, :app, {})
      end

      def update(payload)
        @http.post_resource("/apps/update", Inttegro::Application, :app, payload)
      end
    end
  end
end
