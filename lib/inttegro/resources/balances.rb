# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Read-only client for the authenticated application's balance snapshot.
    #
    # Access this resource through {Inttegro::Client#balances}.
    class Balances
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Retrieve the latest strongly typed GHS balance snapshot.
      #
      # @return [Inttegro::Balance::Snapshot] available, pending, reserved, and refund balances
      def get
        @http.post_resource("/balances", Inttegro::Balance::Snapshot, :balances, {})
      end
    end
  end
end
