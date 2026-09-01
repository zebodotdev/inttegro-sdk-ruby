# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Payouts resource for configuring and managing automatic balance payouts.
    #
    # Payouts transfer available balance from Inttegro to your financial accounts. Use this resource
    # to configure payout destinations, manage payout schedules, enable foreign exchange conversion,
    # and retrieve payout history.
    #
    # @see https://studio.inttegro.com/payouts for detailed guides
    class Payouts
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Configure which financial account should be used for payouts in each currency.
      #
      # Sets payout destinations by mapping currency codes to financial account IDs. Each financial
      # account must be owned by your application, have push operations enabled, and its currency
      # must match the currency key in the destinations map.
      #
      # @param destinations [Hash] Map of currency codes to financial account IDs (required)
      #
      # @return [Inttegro::Models::SetPayoutDestinationsResponse] Updated payout settings
      #
      # @example Set payout destinations for multiple currencies
      #   result = client.payouts.set_destinations(
      #     destinations: {
      #       'ghs' => 'fa_1234567890abcdef',
      #       'usd' => 'fa_0987654321fedcba'
      #     }
      #   )
      #
      #   puts "Destinations configured: #{result.settings&.destinations}"
      #
      # @see https://studio.inttegro.com/enable-automatic-payouts for configuration guide
      def set_destinations(destinations:)
        @http.post_model(
          "/payouts/set_destinations",
          Inttegro::Models::SetPayoutDestinationsResponse,
          { destinations: destinations }
        )
      end

      # Retrieve the current payout settings for your application.
      #
      # Returns payout settings including configured payout destinations, schedule information,
      # and whether foreign exchange is enabled.
      #
      # @return [Inttegro::Models::GetPayoutSettingsResponse] Current payout settings
      #
      # @example Get payout settings
      #   result = client.payouts.settings
      #
      #   puts "Payout schedule: #{result.settings&.schedule&.name}"
      #
      # @see https://studio.inttegro.com/product-payouts for payouts overview
      def settings
        @http.post_model("/payouts/settings", Inttegro::Models::GetPayoutSettingsResponse, {})
      end

      # Disable automatic payouts by switching to manual payout mode.
      #
      # Disables automatic payouts for your application. When automatic payouts are disabled, the system
      # will not automatically schedule payouts—you must manually trigger them. Balance transactions must
      # still be at least 7 days old before they can be paid out, but the payout will only occur when you
      # explicitly request it.
      #
      # @return [Inttegro::Models::DisableAutomaticPayoutsResponse] Updated payout settings
      #
      # @example Disable automatic payouts
      #   result = client.payouts.disable_automatic
      #
      #   puts "Schedule type: #{result.settings&.schedule&.type}"
      #
      # @see https://studio.inttegro.com/disable-automatic-payouts for manual payout guide
      def disable_automatic
        @http.post_model(
          "/payouts/disable",
          Inttegro::Models::DisableAutomaticPayoutsResponse,
          {}
        )
      end

      def enable_automatic
        @http.post_model(
          "/payouts/enable",
          Inttegro::Models::EnableAutomaticPayoutsResponse,
          {}
        )
      end

      alias enable enable_automatic

      # Enable foreign exchange conversion for payouts.
      #
      # Enables FX conversion for payouts. When FX is enabled, Inttegro can automatically convert payout
      # funds from one currency to another when routing to destination accounts. This allows you to
      # consolidate multiple currencies into a single operating account or hold funds in a preferred currency.
      #
      # With FX disabled (default), payouts only transfer funds to accounts matching the transaction currency.
      # With FX enabled, GHS balance can be converted and paid out to USD accounts, for example.
      #
      # Important: FX conversion incurs additional fees beyond standard payout fees, and exchange rates are
      # determined at payout execution time. FX-enabled payouts require approval and special configuration.
      #
      # @return [Inttegro::Models::PayoutSettingsResponse] Updated payout settings
      #
      # @example Enable foreign exchange for payouts
      #   result = client.payouts.enable_fx
      #
      #   puts "FX enabled: #{result.settings&.fx_enabled}"
      #
      # @see https://studio.inttegro.com/enable-fx-payouts for FX payout guide
      def enable_fx
        @http.post_model("/payouts/enable_fx", Inttegro::Models::PayoutSettingsResponse, {})
      end

      # Disable foreign exchange conversion for payouts.
      #
      # Disables FX conversion, restricting payouts to accounts that match the transaction currency.
      # After disabling FX, GHS balance can only be paid out to GHS accounts, USD balance only to USD accounts, etc.
      #
      # @return [Inttegro::Models::PayoutSettingsResponse] Updated payout settings
      #
      # @example Disable foreign exchange for payouts
      #   result = client.payouts.disable_fx
      #
      #   puts "FX enabled: #{result.settings&.fx_enabled}"
      #
      # @see https://studio.inttegro.com/disable-fx-payouts for FX payout guide
      def disable_fx
        @http.post_model("/payouts/disable_fx", Inttegro::Models::PayoutSettingsResponse, {})
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
      # @return [Inttegro::Models::PagePayoutsResponse] Paginated list of payouts
      #
      # @example Get first page of payouts
      #   result = client.payouts.page(
      #     per_page: 25,
      #     page: 1
      #   )
      #
      #   puts "Retrieved #{result.page&.payouts&.length || 0} payouts"
      #
      # @example Filter by status
      #   paid_payouts = client.payouts.page(
      #     status: 'paid',
      #     per_page: 50
      #   )
      #
      # @see https://studio.inttegro.com/pagination for pagination guide
      # @see https://studio.inttegro.com/product-payouts for payouts overview
      def page(payload = {})
        @http.post_model("/payouts/page", Inttegro::Models::PagePayoutsResponse, payload || {})
      end

      def schedule(payload)
        @http.post_model("/payouts/schedule", Inttegro::Models::SchedulePayoutResponse, payload)
      end

      def lookup(payout_id:)
        @http.post_model(
          "/payouts/lookup",
          Inttegro::Models::LookupPayoutResponse,
          { payout_id: payout_id }
        )
      end

      # Cancel a scheduled payout before execution.
      #
      # Only payouts in scheduled status with a future execution time can be canceled.
      #
      # @param payout_id [String] Scheduled payout ID
      #
      # @return [Inttegro::Models::CancelPayoutResponse] Canceled payout
      def cancel(payout_id:)
        @http.post_model(
          "/payouts/cancel",
          Inttegro::Models::CancelPayoutResponse,
          { payout_id: payout_id }
        )
      end
    end
  end
end
