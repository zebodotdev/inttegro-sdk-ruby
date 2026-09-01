# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Balances
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def get
        @http.post_model("/balances", Commerce::Models::BalanceSnapshotResponse, {})
      end
    end
  end
end
