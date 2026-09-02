# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Balances
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def get
        @http.post_model("/balances", Inttegro::BalanceSnapshotResponse, {})
      end
    end
  end
end
