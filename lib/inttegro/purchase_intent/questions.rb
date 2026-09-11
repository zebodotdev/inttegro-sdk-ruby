# frozen_string_literal: true
# typed: strict

module Inttegro
  class PurchaseIntent
    extend T::Sig

    sig { returns(T::Boolean) }
    # Determine whether the purchase intent's effective status is +Status::ACTIVE+.
    #
    # @return [Boolean] whether the purchase intent is active
    def active?
      status == Inttegro::PurchaseIntent::Status::ACTIVE
    end

    sig { returns(T::Boolean) }
    # Determine whether the purchase intent is configured for one order only.
    #
    # @return [Boolean] whether {#usage} marks the purchase intent as single-use
    def single_use?
      usage.single_use == true
    end

    sig { returns(T.nilable(String)) }
    # Return the order created from a consumed single-use purchase intent.
    #
    # Reusable intents, unused intents, and usage records with an empty order identifier return
    # +nil+. This method reads the embedded usage snapshot and performs no lookup request.
    #
    # @return [String, nil] created order identifier when present
    def used_order_id
      return nil unless single_use?

      id = usage.order&.id
      id unless id&.empty?
    end
  end
end
