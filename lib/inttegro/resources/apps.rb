# frozen_string_literal: true
# typed: strict

module Inttegro
  # Resource clients exposed by {Inttegro::Client}.
  #
  # Each client owns one related set of API operations and converts successful responses into the
  # resource-scoped models documented under {Inttegro}.
  module Resources
    # Client for creating, reading, and updating Inttegro applications.
    #
    # Access this resource through {Inttegro::Client#apps}.
    class Apps
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create an application and return its typed application record.
      #
      # @param payload [Hash, Inttegro::Application::CreateRequest] application creation fields
      # @return [Inttegro::Application] created application
      def create(payload)
        @http.post_resource("/apps/create", Inttegro::Application, :app, payload)
      end

      # Retrieve the application authenticated by the client's API key.
      #
      # @return [Inttegro::Application] authenticated application
      def lookup
        @http.post_resource("/apps/lookup", Inttegro::Application, :app, {})
      end

      # Update mutable fields on the authenticated application.
      #
      # @param payload [Hash, Inttegro::Application::UpdateRequest] fields to change
      # @return [Inttegro::Application] updated application
      def update(payload)
        @http.post_resource("/apps/update", Inttegro::Application, :app, payload)
      end
    end
  end
end
