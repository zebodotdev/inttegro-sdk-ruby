# frozen_string_literal: true
# typed: strict

module Inttegro
  class Product
    extend T::Sig

    sig { returns(T::Boolean) }
    # Determine whether the API supplied an archive timestamp.
    #
    # @return [Boolean] whether this product is archived
    def archived?
      !archived_at.nil?
    end

    sig { returns(T::Boolean) }
    # Determine whether the product is currently active and not archived.
    #
    # This local predicate does not infer publication from {#published_at}; it reflects the
    # +active+ and +archived_at+ fields on the current model.
    #
    # @return [Boolean] whether the product is currently published by this definition
    def published?
      active && !archived?
    end

    sig { returns(T::Boolean) }
    # Determine whether the product has ever received a publication timestamp.
    #
    # @return [Boolean] whether {#published_at} is present
    def ever_published?
      !published_at.nil?
    end
  end
end
