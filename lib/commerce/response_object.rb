# frozen_string_literal: true

require_relative "models"

module Commerce
  # Lightweight wrapper for API responses that allows both hash-style and
  # method-style access while keeping values serializable.
  class ResponseObject
    def initialize(data = {})
      @data = {}
      set_data(data || {})
    end

    def [](key)
      @data[key.to_s]
    end

    def to_h
      deep_unwrap(@data)
    end

    def deserialize(klass)
      Commerce::Models.deserialize(to_h, klass)
    end

    def respond_to_missing?(name, include_private = false)
      @data.key?(name.to_s) || super
    end

    private

    def set_data(data)
      unless data.is_a?(Hash)
        raise ArgumentError, "response data must be a Hash, got #{data.class}"
      end

      data.each do |key, value|
        @data[key.to_s] = wrap(value)
      end
    end

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

    def method_missing(name, *args, &block)
      key = name.to_s
      return @data[key] if @data.key?(key)

      super
    end
  end
end
