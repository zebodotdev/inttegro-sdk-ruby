# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Apps
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def create(payload)
        @http.post_model("/apps/create", Commerce::Models::CreateApplicationResponse, payload)
      end

      def lookup
        @http.post_model("/apps/lookup", Commerce::Models::LookupApplicationResponse, {})
      end

      def update(payload)
        @http.post_model("/apps/update", Commerce::Models::UpdateApplicationResponse, payload)
      end
    end
  end
end
