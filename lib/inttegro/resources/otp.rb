# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for one-time-password delivery, verification, lookup, and cancellation.
    #
    # Access this resource through {Inttegro::Client#otp}.
    class Otp
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Generate and deliver a one-time password.
      #
      # @param payload [Hash, Inttegro::OTP::InitiateRequest] recipient and OTP constraints
      # @return [Inttegro::OTP::Transaction] created OTP transaction
      def initiate(payload)
        @http.post_resource("/otp/initiate", Inttegro::OTP::Transaction, :transaction, payload)
      end

      alias_method :initialize_session, :initiate

      # Check a submitted token and record the verification attempt.
      #
      # @param payload [Hash, Inttegro::OTP::VerifyRequest] transaction identifier and submitted token
      # @return [Inttegro::OTP::Verification] verification result
      def verify(payload)
        @http.post_model("/otp/verify", Inttegro::OTP::Verification, payload)
      end

      # Retrieve delivery, verification, and expiry state for an OTP transaction.
      #
      # @param payload [Hash, Inttegro::OTP::LookupRequest] transaction identifier
      # @return [Inttegro::OTP::Transaction] matching OTP transaction
      def lookup(payload)
        @http.post_resource("/otp/lookup", Inttegro::OTP::Transaction, :transaction, payload)
      end

      # Cancel an OTP transaction.
      #
      # @param payload [Hash] transaction identifier and request fields accepted by the endpoint
      # @return [Inttegro::OTP::Transaction] canceled OTP transaction
      def cancel(payload)
        @http.post_resource("/otp/cancel", Inttegro::OTP::Transaction, :transaction, payload)
      end
    end
  end
end
