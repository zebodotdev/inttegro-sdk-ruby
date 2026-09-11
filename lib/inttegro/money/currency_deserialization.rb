# frozen_string_literal: true
# typed: strict

module Inttegro
  module Money
    class Currency
      class << self
        extend T::Sig

        sig { params(value: String).returns(Inttegro::Money::Currency) }
        # Decode an ISO currency code without requiring callers to normalize case or whitespace.
        #
        # The returned enum still serializes to the lowercase value required by the API.
        #
        # @param value [String] currency code such as +"GHS"+, +"ghs"+, or +" ghs "+
        # @return [Inttegro::Money::Currency] matching generated currency value
        # @raise [KeyError] if the normalized code is not supported by the generated enum
        def deserialize(value)
          super(value.strip.downcase)
        end
      end
    end
  end
end
