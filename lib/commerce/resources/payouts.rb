# frozen_string_literal: true

module Commerce
  module Resources
    # Payouts resource for configuring and managing automatic balance payouts.
    #
    # Payouts transfer available balance from Commerce to your financial accounts. Use this resource
    # to configure payout destinations, manage payout schedules, enable foreign exchange conversion,
    # and retrieve payout history.
    #
    # @see https://studio.zebo.dev/payouts for detailed guides
    class Payouts
      def initialize(http)
        @http = http
      end

      # Configure which financial account should be used for payouts in each currency.
      #
      # Sets payout destinations by mapping currency codes to financial account IDs. Each financial
      # account must be owned by your application, have push operations enabled, and its currency
      # must match the currency key in the destinations map.
      #
      # @param destinations [Hash] Map of currency codes to financial account IDs (required)
      #
      # @return [Commerce::ResponseObject] Response containing updated payout settings
      #
      # @example Set payout destinations for multiple currencies
      #   result = client.payouts.set_destinations(
      #     destinations: {
      #       'ghs' => 'fa_1234567890abcdef',
      #       'usd' => 'fa_0987654321fedcba'
      #     }
      #   )
      #
      #   settings = result.data['settings']
      #   puts "Destinations configured: #{settings['destinations']}"
      #
      # @see https://studio.zebo.dev/enable-automatic-payouts for configuration guide
      def set_destinations(destinations:)
        @http.post("/payouts/set_destinations", { destinations: destinations })
      end

      # Retrieve the current payout settings for your application.
      #
      # Returns payout settings including configured payout destinations, schedule information,
      # and whether foreign exchange is enabled.
      #
      # @return [Commerce::ResponseObject] Response containing payout settings
      #
      # @example Get payout settings
      #   result = client.payouts.settings
      #
      #   settings = result.data['settings']
      #   puts "Payout schedule: #{settings['schedule']['name']}"
      #   puts "Destinations: #{settings['destinations']}"
      #
      # @see https://studio.zebo.dev/product-payouts for payouts overview
      def settings
        @http.post("/payouts/settings", {})
      end

      # Disable automatic payouts by switching to manual payout mode.
      #
      # Disables automatic payouts for your application. When automatic payouts are disabled, the system
      # will not automatically schedule payouts—you must manually trigger them. Balance transactions must
      # still be at least 7 days old before they can be paid out, but the payout will only occur when you
      # explicitly request it.
      #
      # @return [Commerce::ResponseObject] Response containing updated settings with manual schedule
      #
      # @example Disable automatic payouts
      #   result = client.payouts.disable_automatic
      #
      #   settings = result.data['settings']
      #   puts "Schedule type: #{settings['schedule']['type']}"  # => "manual"
      #
      # @see https://studio.zebo.dev/disable-automatic-payouts for manual payout guide
      def disable_automatic
        @http.post("/payouts/disable", {})
      end

      # Enable foreign exchange conversion for payouts.
      #
      # Enables FX conversion for payouts. When FX is enabled, Commerce can automatically convert payout
      # funds from one currency to another when routing to destination accounts. This allows you to
      # consolidate multiple currencies into a single operating account or hold funds in a preferred currency.
      #
      # With FX disabled (default), payouts only transfer funds to accounts matching the transaction currency.
      # With FX enabled, GHS balance can be converted and paid out to USD accounts, for example.
      #
      # Important: FX conversion incurs additional fees beyond standard payout fees, and exchange rates are
      # determined at payout execution time. FX-enabled payouts require approval and special configuration.
      #
      # @return [Commerce::ResponseObject] Response containing updated payout settings
      #
      # @example Enable foreign exchange for payouts
      #   result = client.payouts.enable_fx
      #
      #   settings = result.data['settings']
      #   puts "FX enabled: #{settings['fx_enabled']}"
      #
      # @see https://studio.zebo.dev/enable-fx-payouts for FX payout guide
      def enable_fx
        @http.post("/payouts/enable_fx", {})
      end

      # Disable foreign exchange conversion for payouts.
      #
      # Disables FX conversion, restricting payouts to accounts that match the transaction currency.
      # After disabling FX, GHS balance can only be paid out to GHS accounts, USD balance only to USD accounts, etc.
      #
      # @return [Commerce::ResponseObject] Response containing updated payout settings
      #
      # @example Disable foreign exchange for payouts
      #   result = client.payouts.disable_fx
      #
      #   settings = result.data['settings']
      #   puts "FX enabled: #{settings['fx_enabled']}"  # => false
      #
      # @see https://studio.zebo.dev/disable-fx-payouts for FX payout guide
      def disable_fx
        @http.post("/payouts/disable_fx", {})
      end

      # Retrieve a paginated list of payouts.
      #
      # Returns payouts in reverse chronological order (most recent first). Use the has_more field
      # and page parameter to navigate through results. Supports filtering by status and time range.
      #
      # @param payload [Hash] Pagination and filter parameters (optional)
      # @option payload [Integer] :page Page number to retrieve (minimum 1, default: 1)
      # @option payload [Integer] :per_page Number of results per page (minimum 1, maximum 100, default: 10)
      # @option payload [String] :status Filter by payout status (e.g., 'pending', 'paid', 'failed')
      # @option payload [String] :created_after Filter payouts created after this timestamp (ISO 8601)
      # @option payload [String] :created_before Filter payouts created before this timestamp (ISO 8601)
      #
      # @return [Commerce::ResponseObject] Paginated list of payouts with pagination details
      #
      # @example Get first page of payouts
      #   result = client.payouts.page(
      #     per_page: 25,
      #     page: 1
      #   )
      #
      #   puts "Retrieved #{result.data['payouts'].length} payouts"
      #   puts "Has more: #{result.data['has_more']}"
      #
      #   # Get next page if available
      #   if result.data['has_more']
      #     next_page = client.payouts.page(per_page: 25, page: 2)
      #   end
      #
      # @example Filter by status
      #   paid_payouts = client.payouts.page(
      #     status: 'paid',
      #     per_page: 50
      #   )
      #
      # @see https://studio.zebo.dev/pagination for pagination guide
      # @see https://studio.zebo.dev/product-payouts for payouts overview
      def page(payload = {})
        @http.post("/payouts/page", payload || {})
      end

      # Cancel a scheduled payout before execution.
      #
      # Only payouts in scheduled status with a future execution time can be canceled.
      #
      # @param payout_id [String] Scheduled payout ID
      #
      # @return [Commerce::ResponseObject] Response containing canceled payout
      def cancel(payout_id:)
        @http.post("/payouts/cancel", { payout_id: payout_id })
      end
    end
  end
end
