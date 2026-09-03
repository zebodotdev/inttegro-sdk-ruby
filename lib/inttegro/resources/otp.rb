# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Otp
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def initiate(payload)
        @http.post_resource("/otp/initiate", Inttegro::OTPTransaction, :transaction, payload)
      end

      alias_method :initialize_session, :initiate

      def verify(payload)
        @http.post_model("/otp/verify", Inttegro::OTPVerification, payload)
      end

      def lookup(payload)
        @http.post_resource("/otp/lookup", Inttegro::OTPTransaction, :transaction, payload)
      end

      def cancel(payload)
        @http.post_resource("/otp/cancel", Inttegro::OTPTransaction, :transaction, payload)
      end
    end
  end
end
