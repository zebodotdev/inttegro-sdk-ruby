# frozen_string_literal: true

module Commerce
  module Resources
    # Orders resource for creating orders, processing payments, and managing order lifecycle.
    #
    # Orders are the central transaction object in Commerce. They represent a purchase with
    # line items, customer information, and payment details. Use this resource to create
    # orders, charge customers, handle confirmations, and process refunds.
    #
    # @see https://commerce.zebo.dev/orders for detailed guides
    class Orders
      def initialize(http)
        @http = http
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
      # @option payload [Hash] :custom_data Key-value custom data (max 25KB, keys and values must be strings)
      # @option payload [String] :idempotency_key Unique key to prevent duplicate order creation
      # @option payload [String] :number Optional order number for reference
      # @option payload [String] :statement_descriptor Text on customer's bank statement (max 22 characters)
      # @option payload [Boolean] :finalize Whether to explicitly finalize order (default: false)
      # @option payload [Boolean] :send_invoice Whether to send invoice to customer (default: false)
      #
      # @return [Commerce::ResponseObject] Response containing the created order
      #
      # @example Create order with new customer and execute payment
      #   result = client.orders.create(
      #     idempotency_key: 'order_2025_001',
      #     execute_payment: true,
      #     customer_data: {
      #       name: 'Akua Asantewaa',
      #       email_address: 'akua@example.com',
      #       phone_number: '+233541234567'
      #     },
      #     payment_method_data: {
      #       type: 'mobile_money',
      #       mobile_money: {
      #         issuer: 'mtn',
      #         number: '0541234567'
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
      #   order = result.data['order']
      #   puts "Created order: #{order['id']}"
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
      # @see https://commerce.zebo.dev/accept-a-payment for payment flow guide
      # @see https://commerce.zebo.dev/order-lifecycle for order states
      def create(payload)
        @http.post("/orders/new", payload)
      end

      # Retrieve an existing order by its ID.
      #
      # Returns full order details including customer, line items, payment state, and invoice information.
      # Use this to check order status, retrieve payment details, or display order confirmation to customers.
      #
      # @param order_id [String] Unique identifier of the order to retrieve (required)
      # @param options [Hash] Additional options (currently unused)
      #
      # @return [Commerce::ResponseObject] Response containing the complete order object
      #
      # @example Lookup an order
      #   result = client.orders.lookup(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   order = result.data['order']
      #   puts "Order status: #{order['status']}"
      #   puts "Payment status: #{order['payment']['status']}" if order['payment']
      #
      # @see https://commerce.zebo.dev/orders for API reference
      def lookup(order_id:, **options)
        body = { order_id: order_id }.merge(options)
        @http.post("/orders/lookup", body)
      end

      # Initiate payment for an existing order.
      #
      # Supports three payment flows:
      # 1. Saved payment method: Provide only order_id to charge a previously saved payment method
      # 2. New payment method: Include payment_method_data with inline payment details
      # 3. Offline payment: Set paid_out_of_band to true for cash, bank transfer, or check payments
      #
      # When payment requires customer confirmation (e.g., OTP), the response includes a next_action field.
      #
      # @param payload [Hash] Payment parameters
      # @option payload [String] :order_id Unique identifier of the order to pay (required)
      # @option payload [Hash] :payment_method_data Inline payment method details (mobile money, card, etc.)
      # @option payload [String] :payment_method_id ID of a saved payment method to use
      # @option payload [Boolean] :paid_out_of_band Set to true if payment received outside Commerce (default: false)
      #
      # @return [Commerce::ResponseObject] Payment response with order and payment state
      #
      # @example Pay with inline mobile money
      #   result = client.orders.pay(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb',
      #     payment_method_data: {
      #       type: 'mobile_money',
      #       mobile_money: {
      #         issuer: 'mtn',
      #         number: '0544998605'
      #       }
      #     }
      #   )
      #
      #   order = result.data['order']
      #   if order['payment']['next_action']&.fetch('type') == 'confirm_payment'
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
      # @see https://commerce.zebo.dev/accept-a-payment for payment flow guide
      # @see https://commerce.zebo.dev/charge-repeat-customers for saved payment methods
      def pay(payload)
        @http.post("/orders/pay", payload)
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
      # @return [Commerce::ResponseObject] Updated order with payment status
      #
      # @example Confirm payment with OTP
      #   result = client.orders.confirm_payment(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb',
      #     token: '123456'
      #   )
      #
      #   order = result.data['order']
      #   if order['payment']['status'] == 'succeeded'
      #     puts 'Payment confirmed successfully!'
      #   end
      #
      # @see https://commerce.zebo.dev/accept-a-payment for complete payment flow
      def confirm_payment(payload)
        @http.post("/orders/confirm_payment", payload)
      end

      # Request a new confirmation token to be sent to the customer (e.g., resend OTP).
      #
      # Use this when the customer didn't receive the original OTP or the token expired. A fresh verification
      # token will be sent via SMS or email to the customer's registered contact information.
      #
      # @param order_id [String] Unique identifier of the order requiring confirmation (required)
      #
      # @return [Commerce::ResponseObject] Response indicating token was resent
      #
      # @example Resend OTP to customer
      #   result = client.orders.request_confirmation(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   puts 'New OTP sent to customer'
      #
      # @see https://commerce.zebo.dev/accept-a-payment for payment confirmation flow
      def request_confirmation(order_id:)
        @http.post("/orders/request_confirmation", { order_id: order_id })
      end

      # Finalize an order to make it immutable and ready for payment or fulfillment.
      #
      # Finalizing (sealing) an order locks its line items and totals, making it ready for payment execution
      # or order completion. Most orders are finalized automatically, but you can explicitly finalize if needed.
      #
      # @param order_id [String] Unique identifier of the order to finalize (required)
      #
      # @return [Commerce::ResponseObject] Finalized order object
      #
      # @example Finalize an order
      #   result = client.orders.finalize(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   order = result.data['order']
      #   puts "Order finalized at: #{order['sealed_at']}"
      #
      # @see https://commerce.zebo.dev/order-lifecycle for order states
      def finalize(order_id:)
        @http.post("/orders/finalize", { order_id: order_id })
      end

      # Mark an order as completed, indicating fulfillment is done.
      #
      # Call this after you've shipped physical goods or delivered digital products to the customer.
      # Completing an order transitions it to its final state and can optionally mark payment as received
      # offline (out-of-band) if paid_out_of_band is set to true.
      #
      # @param payload [Hash] Completion parameters
      # @option payload [String] :order_id Unique identifier of the order to complete (required)
      # @option payload [Boolean] :paid_out_of_band Set to true if payment received outside Commerce (default: false)
      #
      # @return [Commerce::ResponseObject] Completed order object
      #
      # @example Complete order after fulfillment
      #   result = client.orders.complete(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   order = result.data['order']
      #   puts "Order completed at: #{order['completed_at']}"
      #
      # @example Complete order with offline payment
      #   result = client.orders.complete(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb',
      #     paid_out_of_band: true
      #   )
      #
      # @see https://commerce.zebo.dev/order-lifecycle for order states
      def complete(payload)
        @http.post("/orders/complete", payload)
      end

      # Cancel an order, stopping payment execution and preventing further processing.
      #
      # Canceling an order is irreversible and should be done when the customer requests cancellation or
      # the order cannot be fulfilled. If payment was already captured, you'll need to refund it separately.
      #
      # @param order_id [String] Unique identifier of the order to cancel (required)
      #
      # @return [Commerce::ResponseObject] Cancelled order object
      #
      # @example Cancel an order
      #   result = client.orders.cancel(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   order = result.data['order']
      #   puts "Order #{order['id']} has been cancelled"
      #
      # @see https://commerce.zebo.dev/order-lifecycle for order states
      def cancel(order_id:)
        @http.post("/orders/cancel", { order_id: order_id })
      end

      # Refund a paid order, returning funds to the customer.
      #
      # Refunds the payment associated with an order, sending funds back to the customer's original payment
      # method. The order must have been successfully paid before it can be refunded.
      #
      # @param order_id [String] Unique identifier of the order to refund (required)
      #
      # @return [Commerce::ResponseObject] Refunded order object with updated payment status
      #
      # @example Refund an order
      #   result = client.orders.refund(
      #     order_id: 'GKj7A8lM5wEGRUvbqpI4bkDFsQvpqVyh5fqePNnb'
      #   )
      #
      #   order = result.data['order']
      #   puts "Order refunded. Refund ID: #{order['payment']['refund']['id']}"
      #
      # @see https://commerce.zebo.dev/retry-a-payment for payment retry guide
      def refund(order_id:)
        @http.post("/orders/refund", { order_id: order_id })
      end

      # Retrieve a paginated list of orders.
      #
      # Returns orders in reverse chronological order (most recent first). Use the has_more field
      # and page parameter to navigate through results. Supports filtering by status and time range.
      #
      # @param payload [Hash] Pagination and filter parameters (optional)
      # @option payload [Integer] :page Page number to retrieve (minimum 1, default: 1)
      # @option payload [Integer] :per_page Number of results per page (minimum 1, maximum 100, default: 10)
      # @option payload [String] :status Filter by order status (e.g., 'paid', 'requires_payment', 'completed')
      # @option payload [String] :created_after Filter orders created after this timestamp (ISO 8601)
      # @option payload [String] :created_before Filter orders created before this timestamp (ISO 8601)
      #
      # @return [Commerce::ResponseObject] Paginated list of orders with pagination details
      #
      # @example Get first page of orders
      #   result = client.orders.page(
      #     per_page: 25,
      #     page: 1
      #   )
      #
      #   puts "Retrieved #{result.data['orders'].length} orders"
      #   puts "Has more: #{result.data['has_more']}"
      #
      #   # Get next page if available
      #   if result.data['has_more']
      #     next_page = client.orders.page(per_page: 25, page: 2)
      #   end
      #
      # @example Filter by status
      #   paid_orders = client.orders.page(
      #     status: 'paid',
      #     per_page: 50
      #   )
      #
      # @see https://commerce.zebo.dev/pagination for pagination guide
      # @see https://commerce.zebo.dev/orders for API reference
      def page(payload = {})
        @http.post("/orders/page", payload || {})
      end
    end
  end
end
