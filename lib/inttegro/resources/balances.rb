# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Balances
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def get
        @http.post_resource("/balances", Inttegro::BalanceSnapshot, :balances, {})
      end
    end
  end
end
