# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    class Otp
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      def initiate(payload)
        @http.post_model("/otp/initiate", Inttegro::Models::InitiateOTPResponse, payload)
      end

      alias_method :initialize_session, :initiate

      def verify(payload)
        @http.post_model("/otp/verify", Inttegro::Models::VerifyOTPResponse, payload)
      end

      def lookup(payload)
        @http.post_model("/otp/lookup", Inttegro::Models::LookupOTPResponse, payload)
      end

      def cancel(payload)
        @http.post_model("/otp/cancel", Inttegro::Models::CancelOtpResponse, payload)
      end
    end
  end
end
