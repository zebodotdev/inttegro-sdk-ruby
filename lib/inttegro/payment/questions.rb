# frozen_string_literal: true
# typed: strict

module Inttegro
  class Payment
    extend T::Sig

    sig { returns(T::Boolean) }
    # Determine whether the payment status is +Status::PAID+.
    #
    # @return [Boolean] whether the payment is paid
    def paid?
      status == Inttegro::Payment::Status::PAID
    end

    sig { returns(T::Boolean) }
    # Determine whether the payment is waiting for customer or merchant action.
    #
    # @return [Boolean] whether the status is +Status::REQUIRES_ACTION+
    def requires_action?
      status == Inttegro::Payment::Status::REQUIRES_ACTION
    end

    sig { returns(T::Boolean) }
    # Determine whether the payment has reached an end state.
    #
    # Paid, canceled, expired, and failed payments are terminal according to this local predicate.
    #
    # @return [Boolean] whether the current status is terminal
    def terminal?
      [
        Inttegro::Payment::Status::PAID,
        Inttegro::Payment::Status::CANCELED,
        Inttegro::Payment::Status::EXPIRED,
        Inttegro::Payment::Status::FAILED
      ].include?(status)
    end

    sig { returns(T.nilable(Inttegro::Payment::NextAction)) }
    # Return the next action only when the payment currently requires action.
    #
    # @return [Inttegro::Payment::NextAction, nil] next action, or +nil+ for every other status
    def required_action
      requires_action? ? next_action : nil
    end
  end
end
