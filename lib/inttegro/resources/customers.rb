# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for reusable customer profiles.
    #
    # Access this resource through {Inttegro::Client#customers}.
    class Customers
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a customer profile.
      #
      # @param payload [Hash, Inttegro::Customer::CreateRequest] customer fields
      # @return [Inttegro::Customer] created customer
      def create(payload)
        @http.post_resource("/customers/create", Inttegro::Customer, :customer, payload)
      end

      # Update supplied fields on an existing customer profile.
      #
      # @param payload [Hash, Inttegro::Customer::UpdateRequest] customer identifier and fields to change
      # @return [Inttegro::Customer] updated customer
      def update(payload)
        @http.post_resource("/customers/update", Inttegro::Customer, :customer, payload)
      end

      # Retrieve one customer by identifier.
      #
      # @param customer_id [String] unique customer identifier
      # @return [Inttegro::Customer] matching customer
      def lookup(customer_id:)
        @http.post_resource("/customers/lookup", Inttegro::Customer, :customer, { customer_id: customer_id })
      end

      # Retrieve a page of customers.
      #
      # @param payload [Hash, Inttegro::Customer::PageRequest] pagination fields
      # @return [Inttegro::Customer::Page] typed page of customers
      def page(payload = {})
        @http.post_resource("/customers/page", Inttegro::Customer::Page, :page, payload || {})
      end
    end
  end
end
