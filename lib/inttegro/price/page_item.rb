# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"
require_relative "catalog_price"

module Inttegro
  class Price
    # Typed representation of the page item object in the Inttegro API.
    #
    # @api public
    # @return [Inttegro::Price::CatalogPrice]
    PageItem = T.type_alias { Inttegro::Price::CatalogPrice }
  end
end
