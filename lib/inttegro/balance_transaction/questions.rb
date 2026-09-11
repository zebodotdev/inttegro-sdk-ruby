# frozen_string_literal: true
# typed: strict

module Inttegro
  class BalanceTransaction
    extend T::Sig

    sig { returns(T.nilable(String)) }
    # Return the resource identifier that originated this transaction when the source is unambiguous.
    #
    # Payment transactions return {#payment_id}; refund transactions return {#refund_id}. The
    # method returns +nil+ when the matching identifier is absent, empty, or conflicts with the
    # identifier for the other source type.
    #
    # @return [String, nil] payment or refund identifier associated with this transaction
    def source_id
      payment = payment_id
      refund = refund_id
      if type == Inttegro::BalanceTransaction::Type::PAYMENT && payment && !payment.empty? && refund.nil?
        return payment
      end
      if type == Inttegro::BalanceTransaction::Type::REFUND && refund && !refund.empty? && payment.nil?
        return refund
      end

      nil
    end

    sig { returns(T::Boolean) }
    # Determine whether this transaction identifies exactly one source matching {#type}.
    #
    # @return [Boolean] +true+ when {#source_id} can resolve the source
    def valid_source?
      !source_id.nil?
    end

    sig { returns(T::Boolean) }
    # Check the minimum identity invariants needed to address this transaction.
    #
    # A valid transaction has non-empty transaction and order identifiers as well as an
    # unambiguous source identifier. This is a local structural check; it does not contact the API.
    #
    # @return [Boolean] whether the transaction satisfies the local identity checks
    def valid?
      !id.empty? && !order_id.empty? && valid_source?
    end
  end
end
