# frozen_string_literal: true
# typed: strict

module Inttegro
  module Resources
    # Client for products and their catalog lifecycle.
    #
    # Access this resource through {Inttegro::Client#products}.
    class Products
      # @param http [Inttegro::HTTPClient] configured transport used for each request
      def initialize(http)
        @http = T.let(http, Inttegro::HTTPClient)
      end

      # Create a catalog product.
      #
      # @param payload [Hash, Inttegro::Product::CreateRequest] product fields
      # @return [Inttegro::Product] created product
      def create(payload)
        @http.post_resource("/products/create", Inttegro::Product, :product, payload)
      end

      # Create a new price for an existing product.
      #
      # @param payload [Hash, Inttegro::Product::AddPriceRequest] product identifier and price fields
      # @return [Inttegro::Price::CatalogPrice] created price
      def add_price(payload)
        @http.post_resource("/products/add_price", Inttegro::Price::CatalogPrice, :price, payload)
      end

      # Select an existing catalog price as the product's default unit price.
      #
      # @param payload [Hash, Inttegro::Product::SetDefaultUnitPriceRequest] product and price identifiers
      # @return [Inttegro::Product] updated product
      def set_default_unit_price(payload)
        @http.post_resource("/products/set_default_unit_price", Inttegro::Product, :product, payload)
      end

      # Retrieve a product and its related catalog details.
      #
      # @param product_id [String] unique product identifier
      # @return [Inttegro::Product] matching product
      def lookup(product_id:)
        @http.post_resource("/products/lookup", Inttegro::Product, :product, { product_id: product_id })
      end

      # Update mutable product fields.
      #
      # @param payload [Hash, Inttegro::Product::UpdateRequest] product identifier and fields to change
      # @return [Inttegro::Product::Updated] updated product representation
      def update(payload)
        @http.post_resource("/products/update", Inttegro::Product::Updated, :product, payload)
      end

      # Mark a product active and record its publication time.
      #
      # @param product_id [String] unique product identifier
      # @return [Inttegro::Product] published product
      def publish(product_id:)
        @http.post_resource("/products/publish", Inttegro::Product, :product, { product_id: product_id })
      end

      # Mark a product inactive without archiving it.
      #
      # @param product_id [String] unique product identifier
      # @return [Inttegro::Product] unpublished product
      def unpublish(product_id:)
        @http.post_resource("/products/unpublish", Inttegro::Product, :product, { product_id: product_id })
      end

      # Archive a product and mark it inactive.
      #
      # @param product_id [String] unique product identifier
      # @return [Inttegro::Product] archived product
      def archive(product_id:)
        @http.post_resource("/products/archive", Inttegro::Product, :product, { product_id: product_id })
      end

      # Retrieve a page of products.
      #
      # @param payload [Hash, Inttegro::Product::PageRequest] pagination fields
      # @return [Inttegro::Product::Page] typed page of products
      def page(payload = {})
        @http.post_resource("/products/page", Inttegro::Product::Page, :page, payload || {})
      end
    end
  end
end
