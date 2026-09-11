# frozen_string_literal: true
# typed: strict

module Inttegro
  class PaymentMethod
    # Confirmation returned after deleting a saved payment method.
    #
    # @api public
    # @!attribute [r] deleted
    #   Whether the API reports that the payment method was deleted.
    #   @return [Boolean]
    # @!attribute [r] payment_method_id
    #   Identifier of the payment method addressed by the delete operation.
    #   @return [String]
    class Deletion < T::Struct
      const :deleted, T::Boolean
      const :payment_method_id, String
    end
  end
end
