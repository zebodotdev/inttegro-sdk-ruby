# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Orders resource for creating orders, processing payments, and managing order lifecycle.
    #
    # Orders are the central transaction object in Inttegro. They represent a purchase with
    # line items, customer information, and payment details. Use this resource to create
    # orders, charge customers, handle confirmations, and process refunds.
    #
    # @see https://studio.inttegro.com/orders for detailed guides
    class Orders
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a new order with line items, customer, and payment details.
      #
      # Creates an order representing a purchase. You can create an order for a new or
      # existing customer, include multiple line items, and optionally execute payment
      # immediately. Orders must have at least one line item and billing details.
      #
      # @param payload [Hash] Order creation parameters
      # @option payload [Hash] :customer_data New customer information (required if customer_id not provided)
      # @option payload [String] :customer_id Existing customer ID (required if customer_data not provided)
      # @option payload [Array<Hash>] :line_items List of products/services being purchased (required)
      # @option payload [Hash] :billing_details Billing contact information (required)
      # @option payload [String] :payment_method_id ID of saved payment method to use
      # @option payload [Hash] :payment_method_data Inline payment method details
      # @option payload [Boolean] :execute_payment Whether to immediately charge (default: false)
      # @option payload [Hash] :checkout_settings Checkout flow configuration with redirect_url and cancel_url
      # @option payload [Hash] :payout_settings Order-specific payout destination configuration
      # @option payload [Hash] :custom_data Key-value custom data (max 25KB, keys and values must be strings)
      # @option payload [Hash] :request_meta Request controls such as idempotency_key
      # @option payload [String] :number Optional order number for reference
      # @option payload [String] :statement_descriptor Text on customer's bank statement (max 22 characters)
      # @option payload [String] :statement_descriptor_prefix Static prefix, 2-10 characters, used to build prefix*order_id; mutually exclusive with statement_descriptor
      # @option payload [Boolean] :finalize Whether to explicitly finalize order (default: false)
      #
      # @return [Inttegro::Order] Created order
      #
      # @example Create order with new customer and execute payment
      #   order = client.orders.create(
      #     request_meta: {
      #       idempotency_key: 'order_2025_001'
      #     },
      #     execute_payment: true,
      #     customer_data: {
      #       name: 'Akua Asantewaa',
      #       email_address: 'akua@example.com',
      #       phone_number: '+233541234567'
      #     },
      #     payment_method_data: {
      #       type: 'mobile_money',
      #       mobile_money: {
      #         network: 'mtn',
      #         account_number: '0541234567'
      #       }
      #     },
      #     line_items: [{
      #       type: 'product',
      #       product: {
      #         type: 'digital',
      #         name: 'Premium Subscription',
      #         quantity: 1,
      #         price: { currency: 'ghs', value: 5000 }
      #       }
      #     }],
      #     billing_details: {
      #       name: 'Akua Asantewaa',
      #       phone_number: '+233541234567'
      #     },
      #     checkout_settings: {
      #       redirect_url: 'https://example.com/order/complete',
      #       cancel_url: 'https://example.com/order/cancelled'
      #     }
      #   )
      #
      #   puts "Created order: #{order.id}"
      #
      # @example Create order with existing customer
      #   result = client.orders.create(
      #     customer_id: 'cu_abc123',
      #     line_items: [{
      #       type: 'product',
      #       product: {
      #         type: 'physical',
      #         name: 'T-Shirt',
      #         quantity: 2,
      #         price: { currency: 'ghs', value: 8000 }
      #       }
      #     }],
      #     billing_details: {
      #       name: 'Kwame Osei',
      #       phone_number: '+233501234567'
      #     }
      #   )
      #
      # @see https://studio.inttegro.com/accept-a-payment for payment flow guide
      # @see https://studio.inttegro.com/order-lifecycle for order states
      def create(payload)
        @http.post_resource("/orders/create", Inttegro::Order, :order, payload)
      end

      def new(payload)
        @http.post_resource("/orders/new", Inttegro::Order, :order, payload)
      end

      # Retrieve an existing order by its ID.
      #
      # Returns full order details including customer, line items, payment state, and invoice information.
      # Use this to check order status, retrieve payment details, or display order confirmation to customers.
      #
      # @param order_id [String] Unique identifier of the order to retrieve (required)
      # @param options [Hash] Additional options (currently unused)
      #
      # @return [Inttegro::Order] Complete order object
      #
      # @example Lookup an order
      #   order = client.orders.lookup(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   puts "Order status: #{order.status.serialize}"
      #
      # @see https://studio.inttegro.com/orders for API reference
      def lookup(order_id:, **options)
        body = { order_id: order_id }.merge(options)
        @http.post_resource("/orders/lookup", Inttegro::Order, :order, body)
      end

      def update(payload)
        @http.post_resource("/orders/update", Inttegro::Order, :order, payload)
      end

      # Initiate payment for an existing order.
      #
      # Supports three payment flows:
      # 1. Saved payment method: Provide only order_id to charge a previously saved payment method
      # 2. New payment method: Include payment_method_data with inline payment details
      # 3. Offline payment: Set paid_out_of_band to true for cash, bank transfer, or check payments
      #
      # When payment requires customer confirmation (e.g., OTP), the returned order includes a next_action field.
      #
      # @param payload [Hash] Payment parameters
      # @option payload [String] :order_id Unique identifier of the order to pay (required)
      # @option payload [Hash] :payment_method_data Inline payment method details (mobile money, card, etc.)
      # @option payload [String] :payment_method_id ID of a saved payment method to use
      # @option payload [Boolean] :paid_out_of_band Set to true if payment received outside Inttegro (default: false)
      #
      # @return [Inttegro::Order] Updated order and payment state
      #
      # @example Pay with inline mobile money
      #   order = client.orders.pay(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb',
      #     payment_method_data: {
      #       type: 'mobile_money',
      #       mobile_money: {
      #         network: 'mtn',
      #         account_number: '0544998605'
      #       }
      #     }
      #   )
      #
      #   if order.payment&.next_action&.type == Inttegro::PaymentNextActionType::CONFIRM_PAYMENT
      #     # Customer needs to provide OTP sent to their phone
      #     puts 'Please enter the OTP sent to your phone'
      #   end
      #
      # @example Pay with saved payment method
      #   result = client.orders.pay(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb',
      #     payment_method_id: 'pm_xyz123abc456'
      #   )
      #
      # @example Mark as paid offline
      #   result = client.orders.pay(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb',
      #     paid_out_of_band: true
      #   )
      #
      # @see https://studio.inttegro.com/accept-a-payment for payment flow guide
      # @see https://studio.inttegro.com/charge-repeat-customers for saved payment methods
      def pay(payload)
        @http.post_resource("/orders/pay", Inttegro::Order, :order, payload)
      end

      # Confirm a pending payment using a verification token (e.g., OTP sent to customer's phone).
      #
      # Call this method when a payment requires customer confirmation and you've collected the verification
      # token from the customer. The token is typically a 6-digit OTP sent via SMS or email.
      #
      # @param payload [Hash] Confirmation parameters
      # @option payload [String] :order_id Unique identifier of the order being paid (required)
      # @option payload [String] :token Verification token provided by customer (required, typically 6 digits)
      #
      # @return [Inttegro::Order] Updated order with payment status
      #
      # @example Confirm payment with OTP
      #   order = client.orders.confirm_payment(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb',
      #     token: '123456'
      #   )
      #
      #   if order.payment&.status == Inttegro::PaymentStatus::PAID
      #     puts 'Payment confirmed successfully!'
      #   end
      #
      # @see https://studio.inttegro.com/accept-a-payment for complete payment flow
      def confirm_payment(payload)
        @http.post_resource("/orders/confirm_payment", Inttegro::Order, :order, payload)
      end

      # Request a new confirmation token to be sent to the customer (e.g., resend OTP).
      #
      # Use this when the customer didn't receive the original OTP or the token expired. A fresh verification
      # token will be sent via SMS or email to the customer's registered contact information.
      #
      # @param order_id [String] Unique identifier of the order requiring confirmation (required)
      # @param request_meta [Hash, nil] Request controls such as idempotency_key (optional)
      #
      # @return [Inttegro::Order] Updated order
      #
      # @example Resend OTP to customer
      #   result = client.orders.request_confirmation(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   puts 'New OTP sent to customer'
      #
      # @see https://studio.inttegro.com/accept-a-payment for payment confirmation flow
      def request_confirmation(order_id:, request_meta: nil)
        @http.post_resource(
          "/orders/request_confirmation",
          Inttegro::Order,
          :order,
          {
            order_id: order_id,
            request_meta: request_meta || stable_order_request_meta("request_confirmation", order_id)
          }
        )
      end

      # Finalize an order to make it immutable and ready for payment or fulfillment.
      #
      # Finalizing (sealing) an order locks its line items and totals, making it ready for payment execution
      # or order completion. Most orders are finalized automatically, but you can explicitly finalize if needed.
      #
      # @param order_id [String] Unique identifier of the order to finalize (required)
      # @param request_meta [Hash, nil] Request controls such as idempotency_key (optional)
      #
      # @return [Inttegro::Order] Finalized order object
      #
      # @example Finalize an order
      #   order = client.orders.finalize(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   puts "Order finalized at: #{order.sealed_at}"
      #
      # @see https://studio.inttegro.com/order-lifecycle for order states
      def finalize(order_id:, request_meta: nil)
        @http.post_resource(
          "/orders/finalize",
          Inttegro::Order,
          :order,
          {
            order_id: order_id,
            request_meta: request_meta || stable_order_request_meta("finalize", order_id)
          }
        )
      end

      # Send the hosted invoice link for an existing order.
      #
      # @param order_id [String] Unique identifier of the order whose invoice should be sent (required)
      #
      # @return [Inttegro::OrderDocumentDeliveryResult] Order and delivery details
      def send_invoice(order_id:)
        @http.post_model(
          "/orders/send_invoice",
          Inttegro::OrderDocumentDeliveryResult,
          { order_id: order_id }
        )
      end

      # Send the hosted receipt link for a paid order.
      #
      # @param order_id [String] Unique identifier of the paid order whose receipt should be sent (required)
      #
      # @return [Inttegro::OrderDocumentDeliveryResult] Order and delivery details
      def send_receipt(order_id:)
        @http.post_model(
          "/orders/send_receipt",
          Inttegro::OrderDocumentDeliveryResult,
          { order_id: order_id }
        )
      end

      # Mark an order as completed, indicating fulfillment is done.
      #
      # Call this after you've shipped physical goods or delivered digital products to the customer.
      # Completing an order transitions it to its final state and can optionally mark payment as received
      # offline (out-of-band) if paid_out_of_band is set to true.
      #
      # @param payload [Hash] Completion parameters
      # @option payload [String] :order_id Unique identifier of the order to complete (required)
      # @option payload [Boolean] :paid_out_of_band Set to true if payment received outside Inttegro (default: false)
      #
      # @return [Inttegro::Order] Completed order object
      #
      # @example Complete order after fulfillment
      #   order = client.orders.complete(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   puts "Order completed at: #{order.completed_at}"
      #
      # @example Complete order with offline payment
      #   result = client.orders.complete(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb',
      #     paid_out_of_band: true
      #   )
      #
      # @see https://studio.inttegro.com/order-lifecycle for order states
      def complete(payload)
        @http.post_resource("/orders/complete", Inttegro::Order, :order, payload)
      end

      # Cancel an order, stopping payment execution and preventing further processing.
      #
      # Canceling an order is irreversible and should be done when the customer requests cancellation or
      # the order cannot be fulfilled. If payment was already captured, you'll need to refund it separately.
      #
      # @param order_id [String] Unique identifier of the order to cancel (required)
      # @param request_meta [Hash, nil] Request controls such as idempotency_key (optional)
      #
      # @return [Inttegro::Order] Cancelled order object
      #
      # @example Cancel an order
      #   order = client.orders.cancel(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   puts "Order #{order.id} has been cancelled"
      #
      # @see https://studio.inttegro.com/order-lifecycle for order states
      def cancel(order_id:, request_meta: nil)
        @http.post_resource(
          "/orders/cancel",
          Inttegro::Order,
          :order,
          {
            order_id: order_id,
            request_meta: request_meta || stable_order_request_meta("cancel", order_id)
          }
        )
      end

      # Create a refund through the /orders/refund compatibility alias.
      #
      # This accepts the same line-item payload as client.refunds.create and returns
      # the created Refund directly. New integrations should use that canonical method.
      #
      # @param payload [Hash] Create-refund payload containing order_id, reason, and line_items
      #
      # @return [Inttegro::Refund] Created refund
      #
      # @example Refund an order
      #   refund = client.orders.refund(
      #     order_id: 'or_0123456789abcdefghijklmnopqrstuvwxyzABCD',
      #     reason: 'requested_by_customer',
      #     line_items: [{
      #       order_line_item_id: 'oli_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMN',
      #       refund_amount: { currency: 'ghs', value: 2500 }
      #     }]
      #   )
      #
      #   puts "Refund created: #{refund.id}"
      #
      # @see https://studio.inttegro.com/refunds
      def refund(payload)
        @http.post_resource("/orders/refund", Inttegro::Refund, :refund, payload)
      end

      # Retrieve a paginated list of orders.
      #
      # Returns orders in reverse chronological order (most recent first).
      #
      # @param payload [Hash] Pagination and filter parameters (optional)
      # @option payload [Integer] :page_number Zero-based page index to retrieve (0-10)
      # @option payload [Integer] :page_size Number of orders per page (1-256)
      # @option payload [String] :customer_id Optional customer whose orders should be returned
      #
      # @return [Inttegro::OrderPage] Paginated list of orders
      #
      # @example Get first page of orders
      #   page = client.orders.page(
      #     page_size: 25,
      #     page_number: 0
      #   )
      #
      #   puts "Retrieved #{page.orders&.length || 0} orders"
      #
      # @example Restrict the page to one customer
      #   customer_orders = client.orders.page(
      #     customer_id: 'cu_123',
      #     page_size: 50
      #   )
      #
      # @see https://studio.inttegro.com/pagination for pagination guide
      # @see https://studio.inttegro.com/orders for API reference
      def page(payload = {})
        @http.post_resource("/orders/page", Inttegro::OrderPage, :page, payload || {})
      end

      private

      def stable_order_request_meta(action, order_id)
        { idempotency_key: "orders_#{action}_#{order_id}" }
      end
    end
  end
end
