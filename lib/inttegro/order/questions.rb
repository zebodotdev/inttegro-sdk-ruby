# frozen_string_literal: true
# typed: strict

module Inttegro
  class Order
    extend T::Sig

    sig { returns(T::Boolean) }
    # Determine whether this order is recorded as paid.
    #
    # An order is considered paid when its status is +Status::PAID+ or the API supplied
    # {#paid_at}. This is a convenience query over the current object and performs no network call.
    #
    # @return [Boolean] whether payment is recorded on the order
    def paid?
      status == Inttegro::Order::Status::PAID || !paid_at.nil?
    end

    sig { returns(T::Boolean) }
    # Determine whether the order currently requires payment.
    #
    # @return [Boolean] whether {#status} is +Status::REQUIRES_PAYMENT+
    def requires_payment?
      status == Inttegro::Order::Status::REQUIRES_PAYMENT
    end

    sig { returns(T::Boolean) }
    # Determine whether the order has reached an end state.
    #
    # Paid, completed, canceled, and expired orders are terminal according to this local predicate.
    #
    # @return [Boolean] whether the current status is terminal
    def terminal?
      [
        Inttegro::Order::Status::PAID,
        Inttegro::Order::Status::COMPLETED,
        Inttegro::Order::Status::CANCELED,
        Inttegro::Order::Status::EXPIRED
      ].include?(status)
    end

    sig { returns(T.nilable(Inttegro::Payment::NextAction)) }
    # Return the action a customer must complete for the current payment, if any.
    #
    # The result is delegated to {Inttegro::Payment#required_action}; orders without a payment,
    # payments outside +requires_action+, and payments without action data return +nil+.
    #
    # @return [Inttegro::Payment::NextAction, nil] actionable payment instructions, when required
    def required_payment_action
      payment&.required_action
    end
  end
end
