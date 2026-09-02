# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Payment Methods resource for tokenizing and managing customer payment instruments.
    #
    # Payment methods are saved payment instruments (mobile money wallets, cards, bank accounts)
    # that customers can reuse across purchases. Use this resource to tokenize new payment methods,
    # verify ownership, and manage the payment method lifecycle.
    #
    # @see https://studio.inttegro.com/payment-methods for detailed guides
    class PaymentMethods
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Save a new payment method for a customer without charging it.
      #
      # Tokenizes and stores payment details for future use. Currently supports mobile money wallets.
      # Use this to collect payment details during customer onboarding, let customers save multiple
      # payment instruments, or set up payment methods before subscription billing.
      #
      # After tokenization, you can optionally verify the payment method to confirm customer ownership
      # and enable frictionless charging.
      #
      # @param payload [Hash] Tokenization parameters
      # @option payload [String] :customer_id Customer who will own this payment method (required)
      # @option payload [Hash] :payment_method_data Payment method details (required)
      # @option payload [Boolean] :verify_immediately Send verification OTP immediately (default: false)
      #
      # @return [Inttegro::TokenizePaymentMethodResponse] Tokenized payment method
      #
      # @example Tokenize a mobile money payment method
      #   result = client.payment_methods.tokenize(
      #     customer_id: 'cu_abc123',
      #     payment_method_data: {
      #       type: 'mobile_money',
      #       mobile_money: {
      #         network: 'mtn',
      #         account_number: '0544998605'
      #       }
      #     },
      #     verify_immediately: true
      #   )
      #
      #   puts "Tokenized payment method: #{result.payment_method&.id}"
      #
      # @see https://studio.inttegro.com/charge-repeat-customers for usage guide
      def tokenize(payload)
        @http.post_model(
          "/payment_methods/tokenize",
          Inttegro::TokenizePaymentMethodResponse,
          payload
        )
      end

      # Send an OTP to confirm customer ownership of a payment method.
      #
      # For mobile money, a 6-digit code is sent via SMS to the registered wallet number. The customer
      # submits the token to complete verification. Verified payment methods can be charged without
      # additional OTP confirmation, meet network provider requirements, and have better authorization rates.
      #
      # @param payment_method_id [String] ID of the payment method to verify (required)
      # @param request_meta [Hash, nil] Request controls such as idempotency_key (optional)
      #
      # @return [Inttegro::PaymentMethodVerificationResponse] Verification details
      #
      # @example Verify a payment method
      #   result = client.payment_methods.verify(
      #     payment_method_id: 'pm_xyz789'
      #   )
      #
      #   puts "Verification request: #{result.verification&.request_id}"
      #
      # @see https://studio.inttegro.com/charge-repeat-customers for verification flow
      def verify(payment_method_id:, request_meta: nil)
        @http.post_model(
          "/payment_methods/verify",
          Inttegro::PaymentMethodVerificationResponse,
          {
            payment_method_id: payment_method_id,
            request_meta: request_meta || stable_payment_method_request_meta("verify", payment_method_id)
          }
        )
      end

      # Submit the OTP received by the customer to complete payment method verification.
      #
      # On success, the payment method's verified flag is set to true. Tokens expire after 8 minutes,
      # and after 5 failed attempts, verification is locked—call verify() again to restart.
      #
      # @param payload [Hash] Confirmation parameters
      # @option payload [String] :payment_method_id ID of the payment method being verified (required)
      # @option payload [String] :token OTP code provided by customer (required, typically 6 digits)
      #
      # @return [Inttegro::PaymentMethodResponse] Verified payment method
      #
      # @example Confirm verification with OTP
      #   result = client.payment_methods.confirm_verification(
      #     payment_method_id: 'pm_xyz789',
      #     token: '123456'
      #   )
      #
      #   if result.payment_method&.verified_at
      #     puts 'Payment method verified successfully!'
      #   end
      #
      # @see https://studio.inttegro.com/charge-repeat-customers for verification flow
      def confirm_verification(payload)
        @http.post_model(
          "/payment_methods/confirm_verification",
          Inttegro::LookupPaymentMethodResponse,
          payload
        )
      end

      # Retrieve details of a saved payment method by its ID.
      #
      # Returns full payment method information including type, verification status, and associated customer.
      # Use this to display saved payment methods to customers or verify payment method status.
      #
      # @param payment_method_id [String] ID of the payment method to retrieve (required)
      #
      # @return [Inttegro::LookupPaymentMethodResponse] Payment method details
      #
      # @example Lookup a payment method
      #   result = client.payment_methods.lookup(
      #     payment_method_id: 'pm_xyz789'
      #   )
      #
      #   puts "Payment method type: #{result.payment_method&.type&.serialize}"
      #
      # @see https://studio.inttegro.com/payment-methods for API reference
      def lookup(payment_method_id:)
        @http.post_model(
          "/payment_methods/lookup",
          Inttegro::LookupPaymentMethodResponse,
          { payment_method_id: payment_method_id }
        )
      end

      def page(payload = {})
        @http.post_model(
          "/payment_methods/page",
          Inttegro::PaymentMethodPageResponse,
          payload || {}
        )
      end

      def update(payload)
        @http.post_model(
          "/payment_methods/update",
          Inttegro::UpdatePaymentMethodResponse,
          payload
        )
      end

      def activate(payment_method_id:)
        @http.post_model(
          "/payment_methods/activate",
          Inttegro::ActivatePaymentMethodResponse,
          { payment_method_id: payment_method_id }
        )
      end

      def disactivate(payment_method_id:)
        @http.post_model(
          "/payment_methods/disactivate",
          Inttegro::DisactivatePaymentMethodResponse,
          { payment_method_id: payment_method_id }
        )
      end

      alias deactivate disactivate

      def archive(payment_method_id:)
        @http.post_model(
          "/payment_methods/archive",
          Inttegro::ArchivePaymentMethodResponse,
          { payment_method_id: payment_method_id }
        )
      end

      def unarchive(payment_method_id:)
        @http.post_model(
          "/payment_methods/unarchive",
          Inttegro::UnarchivePaymentMethodResponse,
          { payment_method_id: payment_method_id }
        )
      end

      # Delete a saved payment method, removing it from the customer's account.
      #
      # Permanently deletes the payment method. This action cannot be undone. Use when a customer
      # requests removal of their payment details or when a payment method is no longer valid.
      #
      # @param payment_method_id [String] ID of the payment method to delete (required)
      # @param request_meta [Hash, nil] Request controls such as idempotency_key (optional)
      #
      # @return [Inttegro::PaymentMethodDeleteResponse] Deletion confirmation
      #
      # @example Delete a payment method
      #   result = client.payment_methods.delete(
      #     payment_method_id: 'pm_xyz789'
      #   )
      #
      #   puts "Payment method deleted"
      #
      # @see https://studio.inttegro.com/payment-methods for API reference
      def delete(payment_method_id:, request_meta: nil)
        @http.post_model(
          "/payment_methods/delete",
          Inttegro::PaymentMethodDeleteResponse,
          {
            payment_method_id: payment_method_id,
            request_meta: request_meta || stable_payment_method_request_meta("delete", payment_method_id)
          }
        )
      end

      # Get configuration settings for payment methods in your application.
      #
      # Returns settings that control payment method behavior, including whether verification
      # is required before charging and supported payment method types.
      #
      # @return [Inttegro::GetPaymentMethodSettingsResponse] Payment method settings
      #
      # @example Get payment method settings
      #   result = client.payment_methods.settings
      #
      #   puts "Mobile money enabled: #{result.settings&.mobile_money&.enabled}"
      #
      # @see https://studio.inttegro.com/payment-methods for API reference
      def settings
        @http.post_model(
          "/payment_methods/settings",
          Inttegro::GetPaymentMethodSettingsResponse,
          {}
        )
      end

      private

      def stable_payment_method_request_meta(action, payment_method_id)
        { idempotency_key: "payment_methods_#{action}_#{payment_method_id}" }
      end
    end
  end
end
