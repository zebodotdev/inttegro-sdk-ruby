# frozen_string_literal: true
# typed: strict

module Inttegro
  class Product
    # Request body for selecting a product's default unit price.
    #
    # Both fields are required and serialize with their snake-case API names.
    #
    # @api public
    # @!attribute [r] price_id
    #   Identifier of the catalog price to make the default.
    #   @return [String]
    # @!attribute [r] product_id
    #   Identifier of the product whose default price is changing.
    #   @return [String]
    class SetDefaultUnitPriceRequest < T::Struct
      const :product_id, String
      const :price_id, String
    end
  end
end
