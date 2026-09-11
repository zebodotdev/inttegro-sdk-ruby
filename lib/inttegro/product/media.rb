# frozen_string_literal: true
# typed: strict

# Generated from openapi/commerce.yml by bin/generate-openapi-types. Do not edit.

require_relative "base"

module Inttegro
  class Product
    # Typed representation of the media object in the Inttegro API.
    #
    # This generated model is immutable. Construct it with `.new`, or decode a string-keyed API
    # payload with `.from_hash`. `#serialize` produces a string-keyed hash using the original wire
    # field names and serialized enum values.
    #
    # @api public
    #
    # @!attribute [r] hero_image
    #   Value of the `hero_image` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `hero_image`.
    #   @return [String, nil]
    #
    # @!attribute [r] thumbnail
    #   Value of the `thumbnail` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `thumbnail`.
    #   @return [String, nil]
    #
    # @!attribute [r] web_page_url
    #   Value of the `web_page_url` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `web_page_url`.
    #   @return [String, nil]
    #
    # @!attribute [r] brand_logo
    #   Value of the `brand_logo` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `brand_logo`.
    #   @return [String, nil]
    #
    # @!attribute [r] infographic
    #   Value of the `infographic` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `infographic`.
    #   @return [String, nil]
    #
    # @!attribute [r] promo_video
    #   Value of the `promo_video` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `promo_video`.
    #   @return [String, nil]
    #
    # @!attribute [r] demo_video
    #   Value of the `demo_video` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `demo_video`.
    #   @return [String, nil]
    #
    # @!attribute [r] gallery
    #   Value of the `gallery` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `gallery`.
    #   @return [Array<String>, nil]
    #
    # @!attribute [r] downloads
    #   Value of the `downloads` field in the Inttegro API payload.
    #
    #   Optional in the API payload; omitted values default to `nil`. Wire name: `downloads`.
    #   @return [Array<String>, nil]
    class Media < T::Struct
      const :hero_image, T.nilable(String), default: nil
      const :thumbnail, T.nilable(String), default: nil
      const :web_page_url, T.nilable(String), default: nil
      const :brand_logo, T.nilable(String), default: nil
      const :infographic, T.nilable(String), default: nil
      const :promo_video, T.nilable(String), default: nil
      const :demo_video, T.nilable(String), default: nil
      const :gallery, T.nilable(T::Array[String]), default: nil
      const :downloads, T.nilable(T::Array[String]), default: nil
    end
  end
end
