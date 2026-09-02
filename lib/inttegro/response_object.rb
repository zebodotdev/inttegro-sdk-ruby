# frozen_string_literal: true
# typed: strict

require "sorbet-runtime"

require_relative "models"
require_relative "types"

module Inttegro
  # Lightweight wrapper for API responses that allows both hash-style and
  # method-style access while keeping values serializable.
  class ResponseObject
    extend T::Sig

    sig { params(data: Types::Payload).void }
    def initialize(data = {})
      @data = T.let({}, T::Hash[String, Object])
      set_data(data)
    end

    sig { params(key: Types::Key).returns(Object) }
    def [](key)
      @data[key.to_s]
    end

    sig { returns(T::Hash[String, Object]) }
    def to_h
      @data.transform_values { |value| deep_unwrap(value) }
    end

    sig { params(klass: T::Class[T::Struct]).returns(T::Struct) }
    def deserialize(klass)
      Inttegro.deserialize(to_h, klass)
    end

    sig { params(name: Symbol, include_private: T::Boolean).returns(T::Boolean) }
    def respond_to_missing?(name, include_private = false)
      @data.key?(name.to_s) || super
    end

    private

    sig { params(data: Types::Payload).void }
    def set_data(data)
      data.each do |key, value|
        @data[key.to_s] = wrap(value)
      end
    end

    sig { params(value: Object).returns(Object) }
    def wrap(value)
      case value
      when Hash
        self.class.new(value)
      when Array
        value.map { |item| wrap(item) }
      else
        value
      end
    end

    sig { params(value: Object).returns(Object) }
    def deep_unwrap(value)
      case value
      when ResponseObject
        value.to_h
      when Hash
        value.transform_values { |v| deep_unwrap(v) }
      when Array
        value.map { |v| deep_unwrap(v) }
      else
        value
      end
    end

    sig do
      params(name: Symbol, args: Object, block: T.nilable(Proc)).returns(Object)
    end
    def method_missing(name, *args, &block)
      key = name.to_s
      return @data[key] if @data.key?(key)

      super
    end
  end
end
