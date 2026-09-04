# typed: strict

# Minimal signatures for the opentelemetry-api surface used by this SDK.
module OpenTelemetry
  sig { returns(Trace::TracerProvider) }
  def self.tracer_provider; end

  sig { returns(Context::Propagation::TextMapPropagator) }
  def self.propagation; end

  class Context
    module Propagation
      class TextMapPropagator
        sig { params(carrier: T::Hash[String, String]).void }
        def inject(carrier); end
      end
    end
  end

  module Trace
    sig do
      type_parameters(:Result)
        .params(
          span: Span,
          block: T.proc.params(span: Span, context: OpenTelemetry::Context).returns(T.type_parameter(:Result))
        )
        .returns(T.type_parameter(:Result))
    end
    def self.with_span(span, &block); end

    class TracerProvider
      sig do
        params(
          deprecated_name: T.nilable(String),
          deprecated_version: T.nilable(String),
          name: T.nilable(String),
          version: T.nilable(String),
          attributes: T.nilable(Object)
        ).returns(Tracer)
      end
      def tracer(deprecated_name = nil, deprecated_version = nil, name: nil, version: nil, attributes: nil); end
    end

    class Tracer
      sig do
        params(
          name: String,
          with_parent: T.nilable(Object),
          attributes: T.nilable(Object),
          links: T.nilable(Object),
          start_timestamp: T.nilable(Time),
          kind: T.nilable(Symbol)
        ).returns(Span)
      end
      def start_span(name, with_parent: nil, attributes: nil, links: nil, start_timestamp: nil, kind: nil); end
    end

    class Span
      sig { params(key: String, value: Object).returns(Span) }
      def set_attribute(key, value); end

      sig { params(name: String, attributes: T.nilable(Object), timestamp: T.nilable(Time)).returns(Span) }
      def add_event(name, attributes: nil, timestamp: nil); end

      sig { params(status: Status).void }
      def status=(status); end

      sig { void }
      def finish; end
    end

    class Status
      sig { params(description: String).returns(Status) }
      def self.error(description = ""); end
    end
  end
end
