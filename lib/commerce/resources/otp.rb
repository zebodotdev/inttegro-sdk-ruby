# frozen_string_literal: true
# typed: strict

module Commerce
  module Resources
    class Otp
      def initialize(http)
        @http = T.let(http, Commerce::HTTPClient)
      end

      def initiate(payload)
        @http.post_model("/otp/initiate", Commerce::Models::InitiateOTPResponse, payload)
      end

      alias_method :initialize_session, :initiate

      def verify(payload)
        @http.post_model("/otp/verify", Commerce::Models::VerifyOTPResponse, payload)
      end

      def lookup(payload)
        @http.post_model("/otp/lookup", Commerce::Models::LookupOTPResponse, payload)
      end

      def cancel(payload)
        @http.post_model("/otp/cancel", Commerce::Models::CancelOtpResponse, payload)
      end
    end
  end
end
