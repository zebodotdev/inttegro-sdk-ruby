# frozen_string_literal: true
# typed: strict

module Inttegro
  class PaymentMethod
    extend T::Sig

    sig { returns(T::Boolean) }
    # Determine whether the API supplied an archive timestamp.
    #
    # @return [Boolean] whether this payment method is archived
    def archived?
      !archived_at.nil?
    end

    sig { returns(T::Boolean) }
    # Determine whether the API supplied a verification timestamp.
    #
    # @return [Boolean] whether this payment method is verified
    def verified?
      !verified_at.nil?
    end

    sig { returns(T::Boolean) }
    # Determine whether the payment method can be treated as reusable by local application code.
    #
    # This predicate requires an active, non-archived, non-ephemeral method. It does not contact
    # the API or guarantee that a future payment attempt will succeed.
    #
    # @return [Boolean] whether the current model satisfies the reusable-method conditions
    def reusable?
      active && !archived? && ephemeral != true
    end
  end
end
