# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "catalog_with_price_data"
require_relative "catalog_with_price_reference"
require_relative "inline_details"

module Inttegro
  class Product
    # Provide either inline product data or a `product_id` reference to an existing catalog
    # product. Catalog-backed product line items can use an explicit `price` or an existing
    # `price_id`. Inttegro never falls back to a product's default unit price during order
    # creation.
    #
    # @api public
    # @return [Inttegro::Product::InlineDetails, Inttegro::Product::CatalogWithPriceData, Inttegro::Product::CatalogWithPriceReference]
    Details = T.type_alias { T.any(Inttegro::Product::InlineDetails, Inttegro::Product::CatalogWithPriceData, Inttegro::Product::CatalogWithPriceReference) }
  end
end
