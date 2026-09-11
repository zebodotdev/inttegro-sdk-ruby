# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for creating, canceling, and observing refunds.
    #
    # Access this resource through {Inttegro::Client#refunds}.
    class Refunds
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Start a refund for paid order line items.
      #
      # @param payload [Hash, Inttegro::Refund::CreateRequest] order, line items, and refund reason
      # @return [Inttegro::Refund] created refund
      def create(payload)
        @http.post_resource("/refunds/create", Inttegro::Refund, :refund, payload)
      end

      # Cancel a pending refund before processing claims it.
      #
      # @param refund_id [String] unique refund identifier
      # @return [Inttegro::Refund] canceled refund
      def cancel(refund_id:)
        @http.post_resource(
          "/refunds/cancel",
          Inttegro::Refund, :refund,
          { refund_id: refund_id }
        )
      end

      # Retrieve the current lifecycle state and amounts for one refund.
      #
      # @param refund_id [String] unique refund identifier
      # @return [Inttegro::Refund] matching refund
      def lookup(refund_id:)
        @http.post_resource(
          "/refunds/lookup",
          Inttegro::Refund, :refund,
          { refund_id: refund_id }
        )
      end

      # Retrieve a page of refunds.
      #
      # @param payload [Hash, Inttegro::Refund::PageRequest] pagination and filter fields
      # @return [Inttegro::Refund::Page] typed page of refunds
      def page(payload)
        @http.post_resource("/refunds/page", Inttegro::Refund::Page, :page, payload)
      end
    end
  end
end
